#ifndef __MK_CORRELATION__
#define __MK_CORRELATION__

#if defined(__cplusplus)
extern "C"{
#endif   //(__cplusplus)


typedef float xcorr_sample_t;

typedef enum xcorr_sample_type_enum
{
  XCORR_TYPE_NONE            = 0,
  XCORR_TYPE_REAL            = 1,
  XCORR_TYPE_COMPLEX         = 2,
  XCORR_TYPE_PURE_QUATERNION = 3,
  XCORR_TYPE_QUATERNION      = 4,
}xcorr_sample_type_t;

typedef struct xcorr_result_struct
{
  xcorr_sample_t*     samples[4];
  xcorr_sample_type_t sample_type;
  double              sample_interval;
  double              lag_time;
  double              frequency;
}xcorr_result_t;

typedef struct opaque_xcorr_struct XCorr;

XCorr*          xcorr_new                            (unsigned input_size, double overlap_percent);
XCorr*          xcorr_destroy                        (XCorr* self);
unsigned        xcorr_get_input_size                 (XCorr* self);
unsigned        xcorr_get_result_size                (XCorr* self);
void            xcorr_set_should_produce_polar_output(XCorr* self, int should);
int             xcorr_get_should_produce_polar_output(XCorr* self);
void            xcorr_set_should_normalize           (XCorr* self, int should);
int             xcorr_get_should_normalize           (XCorr* self);
void            xcorr_set_overlap                    (XCorr* self, double percent);
double          xcorr_get_overlap                    (XCorr* self);
void            xcorr_clear                          (XCorr* self);
xcorr_result_t* xcorr_feed_samples                   (XCorr* self, 
                                                      xcorr_sample_t* sample_a, 
                                                      xcorr_sample_t* sample_b, 
                                                      xcorr_sample_type_t sample_type);

#if defined(__cplusplus)
}
#endif   //(__cplusplus)

#endif// __MK_CORRELATION__