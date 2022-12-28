/* Call Library source file */

#include "extcode.h"

/* lv_prolog.h and lv_epilog.h set up the correct alignment for LabVIEW data. */
#include "lv_prolog.h"

/* Typedefs */

typedef struct {
	int32_t elt1;
	LVBoolean elt2;
	} TD1;

#include "lv_epilog.h"

void test_func(int32_t size, TD1 *data);

void test_func(int32_t size, TD1 *data)
{

	/* Insert code here */

}

