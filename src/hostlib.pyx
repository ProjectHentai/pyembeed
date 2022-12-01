# cython: language_level=3
# cython: cdivision=True
cdef extern from "host.h" nogil:
    int hostfunc_c "hostfunc"(int a, int b)

cpdef int hostfunc(int a, int b):
    with nogil:
        return hostfunc_c(a, b)