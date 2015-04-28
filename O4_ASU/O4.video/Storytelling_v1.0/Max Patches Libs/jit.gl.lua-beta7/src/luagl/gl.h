#if defined(WIN32) || defined(__WINDOWS_MM__)
    // Windows
	#include <windows.h>

	#include <gl/gl.h>
	#include <gl/glu.h>
#elif defined( __APPLE__ ) && defined( __MACH__ ) || defined (OSX)
    // OSX
	#include <OpenGL/gl.h>
	#include <OpenGL/glext.h>
	#include <OpenGL/glu.h>
#else
    // Linux
    #include <GL/gl.h>
	#include <GL/glu.h>
#endif


extern void stdout_error(lua_State *L, const char *err_msg);

#define script_error		stdout_error

#define LUAGL_API extern
