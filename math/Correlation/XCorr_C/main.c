#include "XCorr.h"

int main(void)
{
  XCorr* xcorr = xcorr_new(64, 100);
  xcorr_destroy(xcorr);
  
  return 0;
}