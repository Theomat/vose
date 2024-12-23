cimport numpy as np
from random_wrapper cimport minstd_rand


cdef class Sampler:

    cdef int n
    cdef minstd_rand generator
    cdef int maxi
    cdef int [:] alias
    cdef np.float_t [:] proba
    cdef bint coin_toss(self, float p)
    cdef int fair_die(self, int n)

    cdef int sample_1(self)
    cdef int [:] sample_k(self, int k)
    cdef np.float_t [:] sample_k_from(self, int k, np.float_t[:] values)
