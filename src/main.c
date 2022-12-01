//
// Created by LAB on 2022/5/3.
//
#include "module.h"

extern void loguru_init();
extern void loguru_free();
extern void loguru_info(const char *msg);
extern void loguru_warning(const char *msg);
extern void loguru_error(const char *msg);
extern void loguru_critical(const char *msg);
extern int loguru_calc(int, int);
extern int loguru_callnative(int, int);

int main()
{
    printf("ok\n");
    loguru_init();
    loguru_info("from c");
    loguru_warning("from c");
    loguru_error("from c");
    loguru_critical("from c");

    printf("%d\n", loguru_calc(4, 4));
    printf("%d\n", loguru_callnative(1,2));
    loguru_free();
    getchar();
    return 0;
}