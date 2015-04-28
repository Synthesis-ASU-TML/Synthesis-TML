#include "lua.file.h"

void lua_autowatch(t_jit_gl_lua *x, void *attr, long ac, t_atom *av)
{
	if(ac&&av) {
		x->autowatch = jit_atom_getlong(av);
		
		if (x->autowatch && x->file != ps_nothing && x->file != ps_none) {
			lua_updatefilewatch(x, x->file->s_name, x->file_volume);
		}
		else {
			if (x->file_watcher)
				freeobject(x->file_watcher);
			x->file_watcher = NULL;
		}
	}
}

void lua_updatefilewatch(t_jit_gl_lua *x, char *filename, short path)
{
	if (x->autowatch) {
		if (x->file_watcher) {
			if (strcmp(filename, x->file->s_name) || path != x->file_volume)
				freeobject((t_object *)x->file_watcher);
			else
				return;
		}
		
		x->file_watcher = filewatcher_new((t_object *)x, path, filename);
		filewatcher_start(x->file_watcher);
	}
}

void lua_filechanged(t_jit_gl_lua *x, char *filename, short path)
{
	if (!x->autowatch)
		return;
		
	if (!strcmp(filename,x->file->s_name) && x->file_volume == path) {
		lua_doread(x, x->file, 0, NULL);
		jit_attr_setlong(x, gensym("autowatch"), 1);
		jit_gl_lua_load_script(x);
	}
}

void lua_doread(t_jit_gl_lua *x, t_symbol *s, short argc, t_atom *argv)
{
	long outtype;
	char filename[256];
	char filepath[512];
	short err;

	strcpy(filename, s->s_name);
	err = locatefile_extended(filename, &(x->file_volume), &outtype, 0, 0);

	if(err && strlen(x->file_path) > 0) {
		err = locatefile_extended(x->file_path, &(x->file_volume), &outtype, 0, 0);
	}

	if (err) {
		error("jit.gl.lua: can't find file %s", filename);
		return;
	}

	if(strlen(x->file_path) <= 0) {
		path_topathname(x->file_volume, filename, filepath);
		strcpy(x->file_path, filepath);
	}
	
	if(lua_readfile(x, filename, x->file_volume)) {
		// failure
	}
	else {
		const char *path = strrchr(x->file_path, '/');
		const char *absolute = strchr(x->file_path, ':');
		if(path) {
			char ppath[1024];
			strncpy(ppath, absolute+1, strlen(absolute) - 1 - strlen(path));
			ppath[strlen(absolute) - 1 - strlen(path)] = '\0';
			x->path = gensym(ppath);
		}
		else {
			x->path = _jit_sym_nothing;
		}
	}
}

short lua_readfile(t_jit_gl_lua *x, char *filename, short vol)
{
	short err;
	long count;
	t_filehandle fh;
	
	err = path_opensysfile(filename, vol, &fh, READ_PERM);
	if (err) {
		error("jit.gl.lua: %s: error %d opening file", filename, err);
		return -1;
	}
	
	if (x->texthandle) {
		sysmem_lockhandle(x->texthandle, false);
		sysmem_freehandle(x->texthandle);
	}
	
	x->texthandle = sysmem_newhandle(0);
	sysfile_readtextfile(fh, x->texthandle, 0, TEXT_LB_NATIVE);
	sysfile_close(fh);
	count = sysmem_handlesize(x->texthandle);
	sysmem_resizehandle(x->texthandle, count + 1);
	(*x->texthandle)[count] = 0; //NULL terminate, '\0'?
	x->textsize = count;
	//zap_gremlins(*x->j_texthand,count);

	return 0;
}


int get_module_path(char *path)
{
	short app_path;
	char total_path[512];
	char *absolute;
	
	app_path = path_getapppath();
	path_topathname(app_path, "", total_path);
	absolute = strstr(total_path, ":/");
	absolute++;

	strcat(absolute, "Cycling '74/lua/luamods/");
	strcpy(path, absolute);
	
	return 0;
}