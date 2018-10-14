
#define HAVE_UNISTD_H 1
#define HAVE_LIMITS_H 1
#define HAVE_GETCWD 1
#define HAVE_OPENDIR 1
#define HAVE_STRSTR 1
#define HAVE_STRTOL 1
#define HAVE_TMPNAM 1
#define HAVE_WAITPID 1
#define HAVE_UNISTD_H 1
#define HAVE_SYS_PARAM_H 1
#define USE_TERMIOS 1
#define HAVE_SYS_SELECT_H 1
#define TM_IN_SYS_TIME 1
#define HAVE_SYS_TIME_H 1
#define HAVE_TZNAME 1
#define STDC_HEADERS 1
#define HAVE_STDLIB_H 1
#define HAVE_STRING_H 1
#define HAVE_UNISTD_H 1

#include <stdio.h>
#if HAVE_SYS_TYPES_H
# include <sys/types.h>
#endif
#if HAVE_SYS_STAT_H
# include <sys/stat.h>
#endif
#if STDC_HEADERS
# include <stdlib.h>
# include <stddef.h>
#else
# if HAVE_STDLIB_H
#  include <stdlib.h>
# endif
#endif
#if HAVE_STRING_H
# if !STDC_HEADERS && HAVE_MEMORY_H
#  include <memory.h>
# endif
# include <string.h>
#endif
#if HAVE_STRINGS_H
# include <strings.h>
#endif
#if HAVE_INTTYPES_H
# include <inttypes.h>
#else
# if HAVE_STDINT_H
#  include <stdint.h>
# endif
#endif
#if HAVE_UNISTD_H
# include <unistd.h>
#endif
int
main ()
{
if ((mode_t *) 0)
  return 0;
if (sizeof (mode_t))
  return 0;
  ;
  return 0;
}
