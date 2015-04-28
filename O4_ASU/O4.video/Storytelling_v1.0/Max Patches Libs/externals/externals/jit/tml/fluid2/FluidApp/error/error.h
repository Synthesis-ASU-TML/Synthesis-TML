/*
 *  error.h
 *  FluidApp
 */

//Errors are in a linked list (for multiple errors), and sub-errors.
//	Errors can be "handled" at some point.

#ifndef ERROR_H
#define ERROR_H

#define error_none		0		/* no error */
#define error_memory	1		/* out of memory */
#define error_flags		2		/* bad flags */
#define error_create	3		/* creation error (socket, file, etc.) */
#define error_net		4		/* error from network transmission */
#define error_duplicate	5		/* when adding something that already exists */
#define error_specify	6		/* Got an error - becoming more explicit */
#define error_thread	7		/* Error caused by threading issues. */
#define error_script	8		/* Error having to do with a scripting engine */
#define error_timeout	9		/* Elapsed waiting time exceeded. */

typedef struct error error;

error *errorCreate_pvt(int in_line, const char *szFile, error *in_prev, int in_code, const char *in_text, ...);
#define errorCreate(prev, code, text, args...) \
	errorCreate_pvt(__LINE__, __FILE__, prev, code, text, ## args)

error *errorReply(error *in_error, int in_reply_code, const char *in_text, ...);

error *errorNext(error *in_error);

int errorCode(error *in_error);

const char *errorMsg(error *in_error);
int errorLine(error *in_error);
const char *errorFile(error *in_error);

//Extensions to raise exceptions more easily
void errorRaise_pvt(int in_line, const char *szFile, int in_code, const char *in_text, ...);

#define errorRaise(code, text, args...) \
	errorRaise_pvt(__LINE__, __FILE__, code, text, ## args)

#define errorAssert(condition, code, text, args...) \
	if (!(condition)) errorRaise(code,text, ## args)


////////////////////////////////////////////////////////////////////////////////
//
//	Sometimes we need a way to store errors; (recuperated from them,
//	but should list them somewhere consistent.)
//
//		This is the place.
//
void errorListAdd(error *in_error);

void errorListReset();			//To fetch the errors added to the list
error *errorListNext();

#endif
