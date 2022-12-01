//
// Created by LAB on 2022/12/1.
//
#include <stdio.h>
#include "host.h"

int hostfunc(int a, int b)
{
    printf("from host func\n");
    return a*b+10;
}