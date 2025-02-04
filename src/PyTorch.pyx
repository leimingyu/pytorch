# GENERATED FILE, do not edit by hand
# Source: src/PyTorch.jinja2.pyx

from __future__ import print_function, division
import numbers
import cython
cimport cython

import numpy as np

cimport cpython.array
import array

from math import log10, floor

cimport Storage
import Storage
from lua cimport *
from nnWrapper cimport *
cimport PyTorch
# import Storage
# from Storage cimport *

import logging
logging.basicConfig()
logger = logging.getLogger(__name__)
# logger.setLevel(logging.DEBUG)

# from http://stackoverflow.com/questions/3410976/how-to-round-a-number-to-significant-figures-in-python
def round_sig(x, sig=2):
    return round(x, sig-int(floor(log10(abs(x))))-1)

cdef extern from "THRandom.h":
    cdef struct THGenerator
    void THRandom_manualSeed(THGenerator *_generator, unsigned long the_seed_)

def manualSeed(long seed):
    THRandom_manualSeed(globalState.generator, seed)

cdef floatToString(float floatValue):
    return '%.6g'% floatValue




_LongStorage = Storage._LongStorage



_FloatStorage = Storage._FloatStorage



_DoubleStorage = Storage._DoubleStorage



_ByteStorage = Storage._ByteStorage





cdef extern from "THTensor.h":
    cdef struct THLongTensor
    THLongTensor *THLongTensor_new()
    THLongTensor *THLongTensor_newClone(THLongTensor *self)
    long *THLongTensor_data(THLongTensor *self)
    THLongTensor *THLongTensor_newContiguous(THLongTensor *self)
    THLongTensor *THLongTensor_newWithSize1d(long size0)
    THLongTensor *THLongTensor_newWithSize2d(long size0, long size1)
    THLongTensor *THLongTensor_newWithSize3d(long size0, long size1, long size2)
    THLongTensor *THLongTensor_newWithSize4d(long size0, long size1, long size2, long size3)
    THLongTensor *THLongTensor_newWithStorage(Storage.THLongStorage *storage_, long storageOffset_, Storage.THLongStorage *size_, Storage.THLongStorage *stride_)
    THLongTensor* THLongTensor_newWithStorage1d(Storage.THLongStorage *storage, long storageOffset, long size0, long stride0)
    THLongTensor* THLongTensor_newWithStorage2d(Storage.THLongStorage *storage, long storageOffset, long size0, long stride0, long size1, long stride1)
    THLongTensor* THLongTensor_newWithStorage3d(Storage.THLongStorage *storage, long storageOffset, long size0, long stride0, long size1, long stride1,
        long size2, long stride2)
    THLongTensor* THLongTensor_newWithStorage4d(Storage.THLongStorage *storage, long storageOffset, long size0, long stride0, long size1, long stride1,
        long size2, long stride2, long size3, long stride3)
    void THLongTensor_retain(THLongTensor *self)
    void THLongTensor_free(THLongTensor *self)

    int THLongTensor_nDimension(THLongTensor *tensor)
    void THLongTensor_resizeAs(THLongTensor *self, THLongTensor *model)
    void THLongTensor_resize1d(THLongTensor *self, long size0)
    void THLongTensor_resize2d(THLongTensor *self, long size0, long size1)
    void THLongTensor_resize3d(THLongTensor *self, long size0, long size1, long size2)
    void THLongTensor_resize4d(THLongTensor *self, long size0, long size1, long size2, long size3)
    long THLongTensor_size(const THLongTensor *self, int dim)
    long THLongTensor_nElement(THLongTensor *self)
    long THLongTensor_stride(const THLongTensor *self, int dim)

    void THLongTensor_set1d(const THLongTensor *tensor, long x0, float value)
    void THLongTensor_set2d(const THLongTensor *tensor, long x0, long x1, float value)
    long THLongTensor_get1d(const THLongTensor *tensor, long x0)
    long THLongTensor_get2d(const THLongTensor *tensor, long x0, long x1)

    void THLongTensor_fill(THLongTensor *self, long value)
    THLongTensor *THLongTensor_newSelect(THLongTensor *self, int dimension, int sliceIndex)
    THLongTensor *THLongTensor_newNarrow(THLongTensor *self, int dimension, long firstIndex, long size)
    Storage.THLongStorage *THLongTensor_storage(THLongTensor *self)

    void THLongTensor_tanh(THLongTensor *r_, THLongTensor *t)
    void THLongTensor_sigmoid(THLongTensor *r_, THLongTensor *t)
    void THLongTensor_cinv(THLongTensor *r_, THLongTensor *t)
    void THLongTensor_neg(THLongTensor *r_, THLongTensor *t)
    void THLongTensor_abs(THLongTensor *r_, THLongTensor *t)

    void THLongTensor_add(THLongTensor *r_, THLongTensor *t, long value)
    void THLongTensor_div(THLongTensor *r_, THLongTensor *t, long value)
    void THLongTensor_mul(THLongTensor *r_, THLongTensor *t, long value)

    void THLongTensor_add(THLongTensor *tensorSelf, THLongTensor *tensorOne, long value)

    void THLongTensor_cadd(THLongTensor *r_, THLongTensor *t, long value, THLongTensor *second)
    void THLongTensor_cmul(THLongTensor *r_, THLongTensor *t, THLongTensor *src)
    void THLongTensor_cdiv(THLongTensor *r_, THLongTensor *t, THLongTensor *src)

    void THLongTensor_geometric(THLongTensor *self, THGenerator *_generator, double p)
    void THLongTensor_bernoulli(THLongTensor *self, THGenerator *_generator, double p)

    



cdef extern from "THTensor.h":
    cdef struct THFloatTensor
    THFloatTensor *THFloatTensor_new()
    THFloatTensor *THFloatTensor_newClone(THFloatTensor *self)
    float *THFloatTensor_data(THFloatTensor *self)
    THFloatTensor *THFloatTensor_newContiguous(THFloatTensor *self)
    THFloatTensor *THFloatTensor_newWithSize1d(long size0)
    THFloatTensor *THFloatTensor_newWithSize2d(long size0, long size1)
    THFloatTensor *THFloatTensor_newWithSize3d(long size0, long size1, long size2)
    THFloatTensor *THFloatTensor_newWithSize4d(long size0, long size1, long size2, long size3)
    THFloatTensor *THFloatTensor_newWithStorage(Storage.THFloatStorage *storage_, long storageOffset_, Storage.THLongStorage *size_, Storage.THLongStorage *stride_)
    THFloatTensor* THFloatTensor_newWithStorage1d(Storage.THFloatStorage *storage, long storageOffset, long size0, long stride0)
    THFloatTensor* THFloatTensor_newWithStorage2d(Storage.THFloatStorage *storage, long storageOffset, long size0, long stride0, long size1, long stride1)
    THFloatTensor* THFloatTensor_newWithStorage3d(Storage.THFloatStorage *storage, long storageOffset, long size0, long stride0, long size1, long stride1,
        long size2, long stride2)
    THFloatTensor* THFloatTensor_newWithStorage4d(Storage.THFloatStorage *storage, long storageOffset, long size0, long stride0, long size1, long stride1,
        long size2, long stride2, long size3, long stride3)
    void THFloatTensor_retain(THFloatTensor *self)
    void THFloatTensor_free(THFloatTensor *self)

    int THFloatTensor_nDimension(THFloatTensor *tensor)
    void THFloatTensor_resizeAs(THFloatTensor *self, THFloatTensor *model)
    void THFloatTensor_resize1d(THFloatTensor *self, long size0)
    void THFloatTensor_resize2d(THFloatTensor *self, long size0, long size1)
    void THFloatTensor_resize3d(THFloatTensor *self, long size0, long size1, long size2)
    void THFloatTensor_resize4d(THFloatTensor *self, long size0, long size1, long size2, long size3)
    long THFloatTensor_size(const THFloatTensor *self, int dim)
    long THFloatTensor_nElement(THFloatTensor *self)
    long THFloatTensor_stride(const THFloatTensor *self, int dim)

    void THFloatTensor_set1d(const THFloatTensor *tensor, long x0, float value)
    void THFloatTensor_set2d(const THFloatTensor *tensor, long x0, long x1, float value)
    float THFloatTensor_get1d(const THFloatTensor *tensor, long x0)
    float THFloatTensor_get2d(const THFloatTensor *tensor, long x0, long x1)

    void THFloatTensor_fill(THFloatTensor *self, float value)
    THFloatTensor *THFloatTensor_newSelect(THFloatTensor *self, int dimension, int sliceIndex)
    THFloatTensor *THFloatTensor_newNarrow(THFloatTensor *self, int dimension, long firstIndex, long size)
    Storage.THFloatStorage *THFloatTensor_storage(THFloatTensor *self)

    void THFloatTensor_tanh(THFloatTensor *r_, THFloatTensor *t)
    void THFloatTensor_sigmoid(THFloatTensor *r_, THFloatTensor *t)
    void THFloatTensor_cinv(THFloatTensor *r_, THFloatTensor *t)
    void THFloatTensor_neg(THFloatTensor *r_, THFloatTensor *t)
    void THFloatTensor_abs(THFloatTensor *r_, THFloatTensor *t)

    void THFloatTensor_add(THFloatTensor *r_, THFloatTensor *t, float value)
    void THFloatTensor_div(THFloatTensor *r_, THFloatTensor *t, float value)
    void THFloatTensor_mul(THFloatTensor *r_, THFloatTensor *t, float value)

    void THFloatTensor_add(THFloatTensor *tensorSelf, THFloatTensor *tensorOne, float value)

    void THFloatTensor_cadd(THFloatTensor *r_, THFloatTensor *t, float value, THFloatTensor *second)
    void THFloatTensor_cmul(THFloatTensor *r_, THFloatTensor *t, THFloatTensor *src)
    void THFloatTensor_cdiv(THFloatTensor *r_, THFloatTensor *t, THFloatTensor *src)

    void THFloatTensor_geometric(THFloatTensor *self, THGenerator *_generator, double p)
    void THFloatTensor_bernoulli(THFloatTensor *self, THGenerator *_generator, double p)

    
    void THFloatTensor_addmm(THFloatTensor *tensorSelf, double beta, THFloatTensor *tensorOne, double alpha, THFloatTensor *mat1, THFloatTensor *mat2)

    void THFloatTensor_uniform(THFloatTensor *self, THGenerator *_generator, double a, double b)
    void THFloatTensor_normal(THFloatTensor *self, THGenerator *_generator, double mean, double stdv)
    void THFloatTensor_exponential(THFloatTensor *self, THGenerator *_generator, double _lambda);
    void THFloatTensor_cauchy(THFloatTensor *self, THGenerator *_generator, double median, double sigma)
    void THFloatTensor_logNormal(THFloatTensor *self, THGenerator *_generator, double mean, double stdv)
    



cdef extern from "THTensor.h":
    cdef struct THDoubleTensor
    THDoubleTensor *THDoubleTensor_new()
    THDoubleTensor *THDoubleTensor_newClone(THDoubleTensor *self)
    double *THDoubleTensor_data(THDoubleTensor *self)
    THDoubleTensor *THDoubleTensor_newContiguous(THDoubleTensor *self)
    THDoubleTensor *THDoubleTensor_newWithSize1d(long size0)
    THDoubleTensor *THDoubleTensor_newWithSize2d(long size0, long size1)
    THDoubleTensor *THDoubleTensor_newWithSize3d(long size0, long size1, long size2)
    THDoubleTensor *THDoubleTensor_newWithSize4d(long size0, long size1, long size2, long size3)
    THDoubleTensor *THDoubleTensor_newWithStorage(Storage.THDoubleStorage *storage_, long storageOffset_, Storage.THLongStorage *size_, Storage.THLongStorage *stride_)
    THDoubleTensor* THDoubleTensor_newWithStorage1d(Storage.THDoubleStorage *storage, long storageOffset, long size0, long stride0)
    THDoubleTensor* THDoubleTensor_newWithStorage2d(Storage.THDoubleStorage *storage, long storageOffset, long size0, long stride0, long size1, long stride1)
    THDoubleTensor* THDoubleTensor_newWithStorage3d(Storage.THDoubleStorage *storage, long storageOffset, long size0, long stride0, long size1, long stride1,
        long size2, long stride2)
    THDoubleTensor* THDoubleTensor_newWithStorage4d(Storage.THDoubleStorage *storage, long storageOffset, long size0, long stride0, long size1, long stride1,
        long size2, long stride2, long size3, long stride3)
    void THDoubleTensor_retain(THDoubleTensor *self)
    void THDoubleTensor_free(THDoubleTensor *self)

    int THDoubleTensor_nDimension(THDoubleTensor *tensor)
    void THDoubleTensor_resizeAs(THDoubleTensor *self, THDoubleTensor *model)
    void THDoubleTensor_resize1d(THDoubleTensor *self, long size0)
    void THDoubleTensor_resize2d(THDoubleTensor *self, long size0, long size1)
    void THDoubleTensor_resize3d(THDoubleTensor *self, long size0, long size1, long size2)
    void THDoubleTensor_resize4d(THDoubleTensor *self, long size0, long size1, long size2, long size3)
    long THDoubleTensor_size(const THDoubleTensor *self, int dim)
    long THDoubleTensor_nElement(THDoubleTensor *self)
    long THDoubleTensor_stride(const THDoubleTensor *self, int dim)

    void THDoubleTensor_set1d(const THDoubleTensor *tensor, long x0, float value)
    void THDoubleTensor_set2d(const THDoubleTensor *tensor, long x0, long x1, float value)
    double THDoubleTensor_get1d(const THDoubleTensor *tensor, long x0)
    double THDoubleTensor_get2d(const THDoubleTensor *tensor, long x0, long x1)

    void THDoubleTensor_fill(THDoubleTensor *self, double value)
    THDoubleTensor *THDoubleTensor_newSelect(THDoubleTensor *self, int dimension, int sliceIndex)
    THDoubleTensor *THDoubleTensor_newNarrow(THDoubleTensor *self, int dimension, long firstIndex, long size)
    Storage.THDoubleStorage *THDoubleTensor_storage(THDoubleTensor *self)

    void THDoubleTensor_tanh(THDoubleTensor *r_, THDoubleTensor *t)
    void THDoubleTensor_sigmoid(THDoubleTensor *r_, THDoubleTensor *t)
    void THDoubleTensor_cinv(THDoubleTensor *r_, THDoubleTensor *t)
    void THDoubleTensor_neg(THDoubleTensor *r_, THDoubleTensor *t)
    void THDoubleTensor_abs(THDoubleTensor *r_, THDoubleTensor *t)

    void THDoubleTensor_add(THDoubleTensor *r_, THDoubleTensor *t, double value)
    void THDoubleTensor_div(THDoubleTensor *r_, THDoubleTensor *t, double value)
    void THDoubleTensor_mul(THDoubleTensor *r_, THDoubleTensor *t, double value)

    void THDoubleTensor_add(THDoubleTensor *tensorSelf, THDoubleTensor *tensorOne, double value)

    void THDoubleTensor_cadd(THDoubleTensor *r_, THDoubleTensor *t, double value, THDoubleTensor *second)
    void THDoubleTensor_cmul(THDoubleTensor *r_, THDoubleTensor *t, THDoubleTensor *src)
    void THDoubleTensor_cdiv(THDoubleTensor *r_, THDoubleTensor *t, THDoubleTensor *src)

    void THDoubleTensor_geometric(THDoubleTensor *self, THGenerator *_generator, double p)
    void THDoubleTensor_bernoulli(THDoubleTensor *self, THGenerator *_generator, double p)

    
    void THDoubleTensor_addmm(THDoubleTensor *tensorSelf, double beta, THDoubleTensor *tensorOne, double alpha, THDoubleTensor *mat1, THDoubleTensor *mat2)

    void THDoubleTensor_uniform(THDoubleTensor *self, THGenerator *_generator, double a, double b)
    void THDoubleTensor_normal(THDoubleTensor *self, THGenerator *_generator, double mean, double stdv)
    void THDoubleTensor_exponential(THDoubleTensor *self, THGenerator *_generator, double _lambda);
    void THDoubleTensor_cauchy(THDoubleTensor *self, THGenerator *_generator, double median, double sigma)
    void THDoubleTensor_logNormal(THDoubleTensor *self, THGenerator *_generator, double mean, double stdv)
    



cdef extern from "THTensor.h":
    cdef struct THByteTensor
    THByteTensor *THByteTensor_new()
    THByteTensor *THByteTensor_newClone(THByteTensor *self)
    unsigned char *THByteTensor_data(THByteTensor *self)
    THByteTensor *THByteTensor_newContiguous(THByteTensor *self)
    THByteTensor *THByteTensor_newWithSize1d(long size0)
    THByteTensor *THByteTensor_newWithSize2d(long size0, long size1)
    THByteTensor *THByteTensor_newWithSize3d(long size0, long size1, long size2)
    THByteTensor *THByteTensor_newWithSize4d(long size0, long size1, long size2, long size3)
    THByteTensor *THByteTensor_newWithStorage(Storage.THByteStorage *storage_, long storageOffset_, Storage.THLongStorage *size_, Storage.THLongStorage *stride_)
    THByteTensor* THByteTensor_newWithStorage1d(Storage.THByteStorage *storage, long storageOffset, long size0, long stride0)
    THByteTensor* THByteTensor_newWithStorage2d(Storage.THByteStorage *storage, long storageOffset, long size0, long stride0, long size1, long stride1)
    THByteTensor* THByteTensor_newWithStorage3d(Storage.THByteStorage *storage, long storageOffset, long size0, long stride0, long size1, long stride1,
        long size2, long stride2)
    THByteTensor* THByteTensor_newWithStorage4d(Storage.THByteStorage *storage, long storageOffset, long size0, long stride0, long size1, long stride1,
        long size2, long stride2, long size3, long stride3)
    void THByteTensor_retain(THByteTensor *self)
    void THByteTensor_free(THByteTensor *self)

    int THByteTensor_nDimension(THByteTensor *tensor)
    void THByteTensor_resizeAs(THByteTensor *self, THByteTensor *model)
    void THByteTensor_resize1d(THByteTensor *self, long size0)
    void THByteTensor_resize2d(THByteTensor *self, long size0, long size1)
    void THByteTensor_resize3d(THByteTensor *self, long size0, long size1, long size2)
    void THByteTensor_resize4d(THByteTensor *self, long size0, long size1, long size2, long size3)
    long THByteTensor_size(const THByteTensor *self, int dim)
    long THByteTensor_nElement(THByteTensor *self)
    long THByteTensor_stride(const THByteTensor *self, int dim)

    void THByteTensor_set1d(const THByteTensor *tensor, long x0, float value)
    void THByteTensor_set2d(const THByteTensor *tensor, long x0, long x1, float value)
    unsigned char THByteTensor_get1d(const THByteTensor *tensor, long x0)
    unsigned char THByteTensor_get2d(const THByteTensor *tensor, long x0, long x1)

    void THByteTensor_fill(THByteTensor *self, unsigned char value)
    THByteTensor *THByteTensor_newSelect(THByteTensor *self, int dimension, int sliceIndex)
    THByteTensor *THByteTensor_newNarrow(THByteTensor *self, int dimension, long firstIndex, long size)
    Storage.THByteStorage *THByteTensor_storage(THByteTensor *self)

    void THByteTensor_tanh(THByteTensor *r_, THByteTensor *t)
    void THByteTensor_sigmoid(THByteTensor *r_, THByteTensor *t)
    void THByteTensor_cinv(THByteTensor *r_, THByteTensor *t)
    void THByteTensor_neg(THByteTensor *r_, THByteTensor *t)
    void THByteTensor_abs(THByteTensor *r_, THByteTensor *t)

    void THByteTensor_add(THByteTensor *r_, THByteTensor *t, unsigned char value)
    void THByteTensor_div(THByteTensor *r_, THByteTensor *t, unsigned char value)
    void THByteTensor_mul(THByteTensor *r_, THByteTensor *t, unsigned char value)

    void THByteTensor_add(THByteTensor *tensorSelf, THByteTensor *tensorOne, unsigned char value)

    void THByteTensor_cadd(THByteTensor *r_, THByteTensor *t, unsigned char value, THByteTensor *second)
    void THByteTensor_cmul(THByteTensor *r_, THByteTensor *t, THByteTensor *src)
    void THByteTensor_cdiv(THByteTensor *r_, THByteTensor *t, THByteTensor *src)

    void THByteTensor_geometric(THByteTensor *self, THGenerator *_generator, double p)
    void THByteTensor_bernoulli(THByteTensor *self, THGenerator *_generator, double p)

    





cdef class _LongTensor(object):
    # properties are in the PyTorch.pxd file

#    def __cinit__(Tensor self, THFloatTensor *tensorC = NULL):
#        self.thFloatTensor = tensorC

    def __cinit__(self, *args, _allocate=True):
#        cdef _LongTensor childobject
        cdef THLongTensor *newTensorC
        cdef _LongTensor templateObject
        logger.debug('LongTensor.__cinit__')
#        cdef THLongStorage *storageC
#        cdef long addr
#        if len(kwargs) > 0:
#            raise Exception('cannot provide arguments to initializer')
        if _allocate:
            if len(args) == 1 and isinstance(args[0], _LongStorage):  # it's a size tensor
               self.native = THLongTensor_new()
               self.resize(args[0])
               return
            if len(args) == 1 and isinstance(args[0], _LongTensor):
               templateObject = args[0]
               newTensorC = THLongTensor_newClone(templateObject.native)
               self.native = newTensorC
               return
            for arg in args:
                if not isinstance(arg, int):
                    raise Exception('cannot provide arguments to initializer')
            if len(args) == 0:
                # print('no args, calling THLongTensor_new()')
                self.native = THLongTensor_new()
            elif len(args) == 1:
                # print('new tensor 1d length', args[0])
                self.native = THLongTensor_newWithSize1d(args[0])
            elif len(args) == 2:
                # print('args=2')
                self.native = THLongTensor_newWithSize2d(args[0], args[1])
            elif len(args) == 3:
                # print('new tensor 1d length', args[0])
                self.native = THLongTensor_newWithSize3d(args[0], args[1], args[2])
            elif len(args) == 4:
                # print('new tensor 1d length', args[0])
                self.native = THLongTensor_newWithSize4d(args[0], args[1], args[2], args[3])
            else:
                logger.error('Raising exception...')
                raise Exception('Not implemented, len(args)=' + str(len(args)))
#        else:
#            if len(args) > 0:
#                if len(args) > 1:
#                    raise Exception('args for allocate=false must be lenght 1 or 0')
#                if isinstance(args[0], _LongTensor):
#                    childobject = args[0]
#                    self.native = childobject.native
#                else:
#                    raise Exception('arg for allocate=0 must be tensor, but was ' + type(args[0]))

#    def __cinit__(self, THFloatTensor *tensorC, Storage storage):
#        self.thFloatTensor = tensorC
#        self.storage = storage

#    def __cinit__(self, Storage storage, offset, size0, stride0, size1, stride1):
#        self.thFloatTensor = THFloatTensor_newWithStorage2d(storage.thFloatStorage, offset, size0, stride0, size1, stride1)
#        self.storage = storage

    def __dealloc__(self):
        cdef int refCount
#        cdef int dims
#        cdef int size
#        cdef int i
#        cdef THFloatStorage *storage
#        logger.debug('__dealloc__ native %s', <long>(self.native) != 0)
        if <long>(self.native) != 0:
            refCount = THLongTensor_getRefCount(self.native)
            # print('LongTensor.dealloc old refcount', refCount)
   #        storage = THFloatTensor_storage(self.thFloatTensor)
   #        if storage == NULL:
   #            # print('   dealloc, storage NULL')
   #        else:
   #            # print('   dealloc, storage ', hex(<long>(storage)))
   #        dims = THFloatTensor_nDimension(self.thFloatTensor)
   #        # print('   dims of dealloc', dims)
   #        for i in range(dims):
   #            # print('   size[', i, ']', THFloatTensor_size(self.thFloatTensor, i))
            if refCount < 1:
                raise Exception('Unallocated an already deallocated tensor... :-O')  # Hmmm, seems this exceptoin wont go anywhere useful... :-P
            THLongTensor_free(self.native)
        else:
            logger.debug('__dealloc__ tensor never allocated')

    def nElement(_LongTensor self):
        return THLongTensor_nElement(self.native)

    def asNumpyTensor(_LongTensor self):
        cdef Storage._LongStorage storage
        cdef long *data
        cdef _LongTensor contig
        size = self.size()
        dims = len(size)
        if dims >= 1:
            totalSize = 1
            for d in range(dims - 1, -1, -1):
                totalSize *= size[d]
            myarray = np.zeros(totalSize, dtype=np.float32)
            contig = self.contiguous()
            data = contig.data()
            for i in range(totalSize):
                myarray[i] = data[i]
            shape = []
            for d in range(dims):
                shape.append(size[d])
            return myarray.reshape(shape)
        else:
            raise Exception('Not implemented for dims = {dims}'.format(dims=dims))

    @property
    def refCount(_LongTensor self):
        return THLongTensor_getRefCount(self.native)

    cdef long *data(_LongTensor self):
        return THLongTensor_data(self.native)

    cpdef int dims(self):
        return THLongTensor_nDimension(self.native)

    cpdef set1d(self, int x0, long value):
        THLongTensor_set1d(self.native, x0, value)

    cpdef set2d(self, int x0, int x1, long value):
        THLongTensor_set2d(self.native, x0, x1, value)

    cpdef long get1d(self, int x0):
        return THLongTensor_get1d(self.native, x0)

    cpdef long get2d(self, int x0, int x1):
        return THLongTensor_get2d(self.native, x0, x1)

    def __repr__(_LongTensor self):
        return self.as_string(self)

    def as_string(_LongTensor self, show_size=True):
        # assume 2d matrix for now
        cdef int size0
        cdef int size1
        dims = self.dims()
        if dims == 0:
            return '[torch.LongTensor with no dimension]\n'
        elif dims == 2:
            size0 = THLongTensor_size(self.native, 0)
            size1 = THLongTensor_size(self.native, 1)
            res = ''
            for r in range(size0):
                thisline = ''
                for c in range(size1):
                    if c > 0:
                        thisline += ' '
                    
                    thisline += str(self.get2d(r,c),)
                    
                res += thisline + '\n'
            if show_size:
                res += '[torch.LongTensor of size ' + ('%.0f' % size0) + 'x' + str(size1) + ']\n'
            return res
        elif dims == 1:
            size0 = THLongTensor_size(self.native, 0)
            res = ''
            thisline = ''
            for c in range(size0):
                if c > 0:
                    thisline += ' '
                
                thisline += str(self.get1d(c))
                
            res += thisline + '\n'
            if show_size:
                res += '[torch.LongTensor of size ' + str(size0) + ']\n'
            return res
        elif dims == 3:
            res = ''
            for d in range(self.size()[0]):
                res += '(' + str(d) + ',.,.) =\n'
                res += self[d].as_string(show_size=False)
            res += '\ntorch.LongTensor of size '
            first = True
            for d in self.size():
               if not first:
                  res += 'x'
               res += str(d)
               first = False
            res += ']'
            return res
        else:
            raise Exception("Not implemented: dims > 2")

    def __getitem__(_LongTensor self, int index):
        if self.dims() == 1:
            return self.get1d(index)
        cdef THLongTensor *res = THLongTensor_newSelect(self.native, 0, index)
        return _LongTensor_fromNative(res, False)

    def __setitem__(_LongTensor self, int index, long value):
        if self.dims() == 1:
            self.set1d(index, value)
        else:
            raise Exception("not implemented")

    def fill(_LongTensor self, long value):
        THLongTensor_fill(self.native, value)
        return self

    

    
    def abs(_LongTensor self):
        cdef _LongTensor res = _LongTensor.new()
        THLongTensor_abs(res.native, self.native)
        return res

    def iabs(_LongTensor self):
        THLongTensor_abs(self.native, self.native)
        return self

    

    def size(_LongTensor self):
        cdef int dims = self.dims()
#        cdef LongStorage size
        if dims > 0:
            size = _LongStorage(dims)
            for d in range(dims):
                size[d] = THLongTensor_size(self.native, d)
            return size
        else:
            return None  # not sure how to handle this yet

    @staticmethod
    def new():
#        # print('allocate tensor')
        return _LongTensor()
#        return _FloatTensor_fromNative(newTensorC, False)

    def narrow(_LongTensor self, int dimension, long firstIndex, long size):
        cdef THLongTensor *narrowedC = THLongTensor_newNarrow(self.native, dimension, firstIndex, size)
        return _LongTensor_fromNative(narrowedC, retain=False)


    def contiguous(_LongTensor self):
        cdef THLongTensor *newTensorC = THLongTensor_newContiguous(self.native)
        return _LongTensor_fromNative(newTensorC)

    def resize1d(_LongTensor self, int size0):
        THLongTensor_resize1d(self.native, size0)
        return self

    def resize2d(_LongTensor self, int size0, int size1):
        THLongTensor_resize2d(self.native, size0, size1)
        return self

    def resize3d(_LongTensor self, int size0, int size1, int size2):
        THLongTensor_resize3d(self.native, size0, size1, size2)
        return self

    def resize4d(_LongTensor self, int size0, int size1, int size2, int size3):
        THLongTensor_resize4d(self.native, size0, size1, size2, size3)
        return self

    def resizeAs(_LongTensor self, _LongTensor model):
        THLongTensor_resizeAs(self.native, model.native)
        return self
    
    def resize(_LongTensor self, Storage._LongStorage size):
#        # print('_FloatTensor.resize size:', size)
        if len(size) == 0:
            return self
        cdef int dims = len(size)
#        # print('_FloatTensor.resize dims:', dims)
        if dims == 1:
            THLongTensor_resize1d(self.native, size[0])
        elif dims == 2:
            THLongTensor_resize2d(self.native, size[0], size[1])
        elif dims == 3:
            THLongTensor_resize3d(self.native, size[0], size[1], size[2])
        elif dims == 4:
            THLongTensor_resize4d(self.native, size[0], size[1], size[2], size[3])
        else:
            raise Exception('Not implemented for dims=' + str(dims))
        return self

    @staticmethod
    def newWithStorage(Storage._LongStorage storage, offset, Storage._LongStorage size, Storage._LongStorage stride):
#        # print('allocate tensor')
        cdef THLongTensor *newTensorC = THLongTensor_newWithStorage(storage.native, offset, size.native, stride.native)
        return _LongTensor_fromNative(newTensorC, False)

    @staticmethod
    def newWithStorage1d(Storage._LongStorage storage, offset, size0, stride0):
#        # print('allocate tensor')
        cdef THLongTensor *newTensorC = THLongTensor_newWithStorage1d(storage.native, offset, size0, stride0)
        return _LongTensor_fromNative(newTensorC, False)

    @staticmethod
    def newWithStorage2d(Storage._LongStorage storage, offset, size0, stride0, size1, stride1):
#        # print('allocate tensor')
        cdef THLongTensor *newTensorC = THLongTensor_newWithStorage2d(storage.native, offset, size0, stride0, size1, stride1)
        return _LongTensor_fromNative(newTensorC, False)

    @staticmethod
    def newWithStorage3d(Storage._LongStorage storage, offset, size0, stride0, size1, stride1, size2, stride2):
#        # print('allocate tensor')
        cdef THLongTensor *newTensorC = THLongTensor_newWithStorage3d(storage.native, offset, size0, stride0, size1, stride1,
            size2, stride2)
        return _LongTensor_fromNative(newTensorC, False)

    @staticmethod
    def newWithStorage4d(Storage._LongStorage storage, offset, size0, stride0, size1, stride1, size2, stride2,
            size3, stride3):
#        # print('allocate tensor')
        cdef THLongTensor *newTensorC = THLongTensor_newWithStorage4d(storage.native, offset, size0, stride0, size1, stride1,
            size2, stride2, size3, stride3)
        return _LongTensor_fromNative(newTensorC, False)

    def clone(_LongTensor self):
        cdef THLongTensor *newTensorC = THLongTensor_newClone(self.native)
        return _LongTensor_fromNative(newTensorC, False)

    def storage(_LongTensor self):
        cdef Storage.THLongStorage *storageC = THLongTensor_storage(self.native)
        if storageC == NULL:
            return None
        return Storage._LongStorage_fromNative(storageC)

    def __add__(_LongTensor self, second):
        # assume 2d matrix for now?
        cdef _LongTensor res = _LongTensor.new()
        cdef _LongTensor secondTensor
        if isinstance(second, numbers.Number):
            THLongTensor_add(res.native, self.native, second)
        else:
            secondTensor = second
            THLongTensor_cadd(res.native, self.native, 1, secondTensor.native)
        return res

    def cmul(_LongTensor self, second):
#        cdef _LongTensor res = _LongTensor.new()
        cdef _LongTensor secondTensor
        secondTensor = second
        THLongTensor_cmul(self.native, self.native, secondTensor.native)
        return self

    def __sub__(_LongTensor self, second):
        # assume 2d matrix for now?
        cdef _LongTensor res = _LongTensor.new()
        cdef _LongTensor secondTensor
        if isinstance(second, numbers.Number):
            THLongTensor_add(res.native, self.native, -second)
        else:
            secondTensor = second
            THLongTensor_cadd(res.native, self.native, -1, secondTensor.native)
        return res

    
    def __floordiv__(_LongTensor self, second):
        cdef _LongTensor res = _LongTensor.new()
        cdef _LongTensor secondTensor
        if isinstance(second, numbers.Number):
            THLongTensor_div(res.native, self.native, second)
        else:
            secondTensor = second
            THLongTensor_cdiv(res.native, self.native, secondTensor.native)
        return res

    def __ifloordiv__(_LongTensor self, second):
        cdef _LongTensor secondTensor
        if isinstance(second, numbers.Number):
            THLongTensor_div(self.native, self.native, second)
        else:
            secondTensor = second
            THLongTensor_cdiv(self.native, self.native, secondTensor.native)
        return self
    

    def __iadd__(_LongTensor self, second):
        cdef _LongTensor secondTensor
        if isinstance(second, numbers.Number):
            THLongTensor_add(self.native, self.native, second)
        else:
            secondTensor = second
            THLongTensor_cadd(self.native, self.native, 1, secondTensor.native)
        return self

    def __isub__(_LongTensor self, second):
        cdef _LongTensor secondTensor
        if isinstance(second, numbers.Number):
            THLongTensor_add(self.native, self.native, -second)
        else:
            secondTensor = second
            THLongTensor_cadd(self.native, self.native, -1, secondTensor.native)
        return self

    def __imul__(_LongTensor self, long value):
        THLongTensor_mul(self.native, self.native, value)
        return self

#    def __mul__(_LongTensor self, _LongTensor M2):
    def __mul__(_LongTensor self, second):
        cdef _LongTensor M2
        cdef _LongTensor T
        cdef _LongTensor res
        cdef int resRows
        cdef int resCols

        res = _LongTensor.new()
        if isinstance(second, numbers.Number):
            THLongTensor_mul(res.native, self.native, second)
            return res
        else:
        
            raise Exception('Invalid arg type for second: ' + str(type(second)))
        

    # ========== random ===============================

    def bernoulli(_LongTensor self, float p=0.5):
        THLongTensor_bernoulli(self.native, globalState.generator, p)
        return self

    def geometric(_LongTensor self, float p=0.5):
        THLongTensor_geometric(self.native, globalState.generator, p)
        return self



#    @staticmethod
cdef _LongTensor_fromNative(THLongTensor *tensorC, retain=True):
    if retain:
        THLongTensor_retain(tensorC)
    tensor = _LongTensor(_allocate=False)
    tensor.native = tensorC
    return tensor






cdef class _FloatTensor(object):
    # properties are in the PyTorch.pxd file

#    def __cinit__(Tensor self, THFloatTensor *tensorC = NULL):
#        self.thFloatTensor = tensorC

    def __cinit__(self, *args, _allocate=True):
#        cdef _FloatTensor childobject
        cdef THFloatTensor *newTensorC
        cdef _FloatTensor templateObject
        logger.debug('FloatTensor.__cinit__')
#        cdef THFloatStorage *storageC
#        cdef long addr
#        if len(kwargs) > 0:
#            raise Exception('cannot provide arguments to initializer')
        if _allocate:
            if len(args) == 1 and isinstance(args[0], _LongStorage):  # it's a size tensor
               self.native = THFloatTensor_new()
               self.resize(args[0])
               return
            if len(args) == 1 and isinstance(args[0], _FloatTensor):
               templateObject = args[0]
               newTensorC = THFloatTensor_newClone(templateObject.native)
               self.native = newTensorC
               return
            for arg in args:
                if not isinstance(arg, int):
                    raise Exception('cannot provide arguments to initializer')
            if len(args) == 0:
                # print('no args, calling THFloatTensor_new()')
                self.native = THFloatTensor_new()
            elif len(args) == 1:
                # print('new tensor 1d length', args[0])
                self.native = THFloatTensor_newWithSize1d(args[0])
            elif len(args) == 2:
                # print('args=2')
                self.native = THFloatTensor_newWithSize2d(args[0], args[1])
            elif len(args) == 3:
                # print('new tensor 1d length', args[0])
                self.native = THFloatTensor_newWithSize3d(args[0], args[1], args[2])
            elif len(args) == 4:
                # print('new tensor 1d length', args[0])
                self.native = THFloatTensor_newWithSize4d(args[0], args[1], args[2], args[3])
            else:
                logger.error('Raising exception...')
                raise Exception('Not implemented, len(args)=' + str(len(args)))
#        else:
#            if len(args) > 0:
#                if len(args) > 1:
#                    raise Exception('args for allocate=false must be lenght 1 or 0')
#                if isinstance(args[0], _FloatTensor):
#                    childobject = args[0]
#                    self.native = childobject.native
#                else:
#                    raise Exception('arg for allocate=0 must be tensor, but was ' + type(args[0]))

#    def __cinit__(self, THFloatTensor *tensorC, Storage storage):
#        self.thFloatTensor = tensorC
#        self.storage = storage

#    def __cinit__(self, Storage storage, offset, size0, stride0, size1, stride1):
#        self.thFloatTensor = THFloatTensor_newWithStorage2d(storage.thFloatStorage, offset, size0, stride0, size1, stride1)
#        self.storage = storage

    def __dealloc__(self):
        cdef int refCount
#        cdef int dims
#        cdef int size
#        cdef int i
#        cdef THFloatStorage *storage
#        logger.debug('__dealloc__ native %s', <long>(self.native) != 0)
        if <long>(self.native) != 0:
            refCount = THFloatTensor_getRefCount(self.native)
            # print('FloatTensor.dealloc old refcount', refCount)
   #        storage = THFloatTensor_storage(self.thFloatTensor)
   #        if storage == NULL:
   #            # print('   dealloc, storage NULL')
   #        else:
   #            # print('   dealloc, storage ', hex(<long>(storage)))
   #        dims = THFloatTensor_nDimension(self.thFloatTensor)
   #        # print('   dims of dealloc', dims)
   #        for i in range(dims):
   #            # print('   size[', i, ']', THFloatTensor_size(self.thFloatTensor, i))
            if refCount < 1:
                raise Exception('Unallocated an already deallocated tensor... :-O')  # Hmmm, seems this exceptoin wont go anywhere useful... :-P
            THFloatTensor_free(self.native)
        else:
            logger.debug('__dealloc__ tensor never allocated')

    def nElement(_FloatTensor self):
        return THFloatTensor_nElement(self.native)

    def asNumpyTensor(_FloatTensor self):
        cdef Storage._FloatStorage storage
        cdef float *data
        cdef _FloatTensor contig
        size = self.size()
        dims = len(size)
        if dims >= 1:
            totalSize = 1
            for d in range(dims - 1, -1, -1):
                totalSize *= size[d]
            myarray = np.zeros(totalSize, dtype=np.float32)
            contig = self.contiguous()
            data = contig.data()
            for i in range(totalSize):
                myarray[i] = data[i]
            shape = []
            for d in range(dims):
                shape.append(size[d])
            return myarray.reshape(shape)
        else:
            raise Exception('Not implemented for dims = {dims}'.format(dims=dims))

    @property
    def refCount(_FloatTensor self):
        return THFloatTensor_getRefCount(self.native)

    cdef float *data(_FloatTensor self):
        return THFloatTensor_data(self.native)

    cpdef int dims(self):
        return THFloatTensor_nDimension(self.native)

    cpdef set1d(self, int x0, float value):
        THFloatTensor_set1d(self.native, x0, value)

    cpdef set2d(self, int x0, int x1, float value):
        THFloatTensor_set2d(self.native, x0, x1, value)

    cpdef float get1d(self, int x0):
        return THFloatTensor_get1d(self.native, x0)

    cpdef float get2d(self, int x0, int x1):
        return THFloatTensor_get2d(self.native, x0, x1)

    def __repr__(_FloatTensor self):
        return self.as_string(self)

    def as_string(_FloatTensor self, show_size=True):
        # assume 2d matrix for now
        cdef int size0
        cdef int size1
        dims = self.dims()
        if dims == 0:
            return '[torch.FloatTensor with no dimension]\n'
        elif dims == 2:
            size0 = THFloatTensor_size(self.native, 0)
            size1 = THFloatTensor_size(self.native, 1)
            res = ''
            for r in range(size0):
                thisline = ''
                for c in range(size1):
                    if c > 0:
                        thisline += ' '
                    
                    thisline += floatToString(self.get2d(r,c),)
                    
                res += thisline + '\n'
            if show_size:
                res += '[torch.FloatTensor of size ' + ('%.0f' % size0) + 'x' + str(size1) + ']\n'
            return res
        elif dims == 1:
            size0 = THFloatTensor_size(self.native, 0)
            res = ''
            thisline = ''
            for c in range(size0):
                if c > 0:
                    thisline += ' '
                
                thisline += floatToString(self.get1d(c))
                
            res += thisline + '\n'
            if show_size:
                res += '[torch.FloatTensor of size ' + str(size0) + ']\n'
            return res
        elif dims == 3:
            res = ''
            for d in range(self.size()[0]):
                res += '(' + str(d) + ',.,.) =\n'
                res += self[d].as_string(show_size=False)
            res += '\ntorch.FloatTensor of size '
            first = True
            for d in self.size():
               if not first:
                  res += 'x'
               res += str(d)
               first = False
            res += ']'
            return res
        else:
            raise Exception("Not implemented: dims > 2")

    def __getitem__(_FloatTensor self, int index):
        if self.dims() == 1:
            return self.get1d(index)
        cdef THFloatTensor *res = THFloatTensor_newSelect(self.native, 0, index)
        return _FloatTensor_fromNative(res, False)

    def __setitem__(_FloatTensor self, int index, float value):
        if self.dims() == 1:
            self.set1d(index, value)
        else:
            raise Exception("not implemented")

    def fill(_FloatTensor self, float value):
        THFloatTensor_fill(self.native, value)
        return self

    

    def itanh(_FloatTensor self):
        THFloatTensor_tanh(self.native, self.native)
        return self

    def isigmoid(_FloatTensor self):
        THFloatTensor_sigmoid(self.native, self.native)
        return self

    def icinv(_FloatTensor self):
        THFloatTensor_cinv(self.native, self.native)
        return self


    def tanh(_FloatTensor self):
        cdef _FloatTensor res = _FloatTensor.new()
        THFloatTensor_tanh(res.native, self.native)
        return res

    def sigmoid(_FloatTensor self):
        cdef _FloatTensor res = _FloatTensor.new()
        THFloatTensor_sigmoid(res.native, self.native)
        return res

    def cinv(_FloatTensor self):
        cdef _FloatTensor res = _FloatTensor.new()
        THFloatTensor_cinv(res.native, self.native)
        return res

    def neg(_FloatTensor self):
        cdef _FloatTensor res = _FloatTensor.new()
        THFloatTensor_neg(res.native, self.native)
        return res

    def ineg(_FloatTensor self):
        THFloatTensor_neg(self.native, self.native)
        return self

    

    
    def abs(_FloatTensor self):
        cdef _FloatTensor res = _FloatTensor.new()
        THFloatTensor_abs(res.native, self.native)
        return res

    def iabs(_FloatTensor self):
        THFloatTensor_abs(self.native, self.native)
        return self

    

    def size(_FloatTensor self):
        cdef int dims = self.dims()
#        cdef LongStorage size
        if dims > 0:
            size = _LongStorage(dims)
            for d in range(dims):
                size[d] = THFloatTensor_size(self.native, d)
            return size
        else:
            return None  # not sure how to handle this yet

    @staticmethod
    def new():
#        # print('allocate tensor')
        return _FloatTensor()
#        return _FloatTensor_fromNative(newTensorC, False)

    def narrow(_FloatTensor self, int dimension, long firstIndex, long size):
        cdef THFloatTensor *narrowedC = THFloatTensor_newNarrow(self.native, dimension, firstIndex, size)
        return _FloatTensor_fromNative(narrowedC, retain=False)


    def contiguous(_FloatTensor self):
        cdef THFloatTensor *newTensorC = THFloatTensor_newContiguous(self.native)
        return _FloatTensor_fromNative(newTensorC)

    def resize1d(_FloatTensor self, int size0):
        THFloatTensor_resize1d(self.native, size0)
        return self

    def resize2d(_FloatTensor self, int size0, int size1):
        THFloatTensor_resize2d(self.native, size0, size1)
        return self

    def resize3d(_FloatTensor self, int size0, int size1, int size2):
        THFloatTensor_resize3d(self.native, size0, size1, size2)
        return self

    def resize4d(_FloatTensor self, int size0, int size1, int size2, int size3):
        THFloatTensor_resize4d(self.native, size0, size1, size2, size3)
        return self

    def resizeAs(_FloatTensor self, _FloatTensor model):
        THFloatTensor_resizeAs(self.native, model.native)
        return self
    
    def resize(_FloatTensor self, Storage._LongStorage size):
#        # print('_FloatTensor.resize size:', size)
        if len(size) == 0:
            return self
        cdef int dims = len(size)
#        # print('_FloatTensor.resize dims:', dims)
        if dims == 1:
            THFloatTensor_resize1d(self.native, size[0])
        elif dims == 2:
            THFloatTensor_resize2d(self.native, size[0], size[1])
        elif dims == 3:
            THFloatTensor_resize3d(self.native, size[0], size[1], size[2])
        elif dims == 4:
            THFloatTensor_resize4d(self.native, size[0], size[1], size[2], size[3])
        else:
            raise Exception('Not implemented for dims=' + str(dims))
        return self

    @staticmethod
    def newWithStorage(Storage._FloatStorage storage, offset, Storage._LongStorage size, Storage._LongStorage stride):
#        # print('allocate tensor')
        cdef THFloatTensor *newTensorC = THFloatTensor_newWithStorage(storage.native, offset, size.native, stride.native)
        return _FloatTensor_fromNative(newTensorC, False)

    @staticmethod
    def newWithStorage1d(Storage._FloatStorage storage, offset, size0, stride0):
#        # print('allocate tensor')
        cdef THFloatTensor *newTensorC = THFloatTensor_newWithStorage1d(storage.native, offset, size0, stride0)
        return _FloatTensor_fromNative(newTensorC, False)

    @staticmethod
    def newWithStorage2d(Storage._FloatStorage storage, offset, size0, stride0, size1, stride1):
#        # print('allocate tensor')
        cdef THFloatTensor *newTensorC = THFloatTensor_newWithStorage2d(storage.native, offset, size0, stride0, size1, stride1)
        return _FloatTensor_fromNative(newTensorC, False)

    @staticmethod
    def newWithStorage3d(Storage._FloatStorage storage, offset, size0, stride0, size1, stride1, size2, stride2):
#        # print('allocate tensor')
        cdef THFloatTensor *newTensorC = THFloatTensor_newWithStorage3d(storage.native, offset, size0, stride0, size1, stride1,
            size2, stride2)
        return _FloatTensor_fromNative(newTensorC, False)

    @staticmethod
    def newWithStorage4d(Storage._FloatStorage storage, offset, size0, stride0, size1, stride1, size2, stride2,
            size3, stride3):
#        # print('allocate tensor')
        cdef THFloatTensor *newTensorC = THFloatTensor_newWithStorage4d(storage.native, offset, size0, stride0, size1, stride1,
            size2, stride2, size3, stride3)
        return _FloatTensor_fromNative(newTensorC, False)

    def clone(_FloatTensor self):
        cdef THFloatTensor *newTensorC = THFloatTensor_newClone(self.native)
        return _FloatTensor_fromNative(newTensorC, False)

    def storage(_FloatTensor self):
        cdef Storage.THFloatStorage *storageC = THFloatTensor_storage(self.native)
        if storageC == NULL:
            return None
        return Storage._FloatStorage_fromNative(storageC)

    def __add__(_FloatTensor self, second):
        # assume 2d matrix for now?
        cdef _FloatTensor res = _FloatTensor.new()
        cdef _FloatTensor secondTensor
        if isinstance(second, numbers.Number):
            THFloatTensor_add(res.native, self.native, second)
        else:
            secondTensor = second
            THFloatTensor_cadd(res.native, self.native, 1, secondTensor.native)
        return res

    def cmul(_FloatTensor self, second):
#        cdef _FloatTensor res = _FloatTensor.new()
        cdef _FloatTensor secondTensor
        secondTensor = second
        THFloatTensor_cmul(self.native, self.native, secondTensor.native)
        return self

    def __sub__(_FloatTensor self, second):
        # assume 2d matrix for now?
        cdef _FloatTensor res = _FloatTensor.new()
        cdef _FloatTensor secondTensor
        if isinstance(second, numbers.Number):
            THFloatTensor_add(res.native, self.native, -second)
        else:
            secondTensor = second
            THFloatTensor_cadd(res.native, self.native, -1, secondTensor.native)
        return res

    
    def __truediv__(_FloatTensor self, second):
        # print('__div__')
        cdef _FloatTensor res = _FloatTensor.new()
        cdef _FloatTensor secondTensor
        if isinstance(second, numbers.Number):
            THFloatTensor_div(res.native, self.native, second)
        else:
            secondTensor = second
            THFloatTensor_cdiv(res.native, self.native, secondTensor.native)
        return res

    def __itruediv__(_FloatTensor self, second):
        cdef _FloatTensor secondTensor
        if isinstance(second, numbers.Number):
            THFloatTensor_div(self.native, self.native, second)
        else:
            secondTensor = second
            THFloatTensor_cdiv(self.native, self.native, secondTensor.native)
        return self
    

    def __iadd__(_FloatTensor self, second):
        cdef _FloatTensor secondTensor
        if isinstance(second, numbers.Number):
            THFloatTensor_add(self.native, self.native, second)
        else:
            secondTensor = second
            THFloatTensor_cadd(self.native, self.native, 1, secondTensor.native)
        return self

    def __isub__(_FloatTensor self, second):
        cdef _FloatTensor secondTensor
        if isinstance(second, numbers.Number):
            THFloatTensor_add(self.native, self.native, -second)
        else:
            secondTensor = second
            THFloatTensor_cadd(self.native, self.native, -1, secondTensor.native)
        return self

    def __imul__(_FloatTensor self, float value):
        THFloatTensor_mul(self.native, self.native, value)
        return self

#    def __mul__(_FloatTensor self, _FloatTensor M2):
    def __mul__(_FloatTensor self, second):
        cdef _FloatTensor M2
        cdef _FloatTensor T
        cdef _FloatTensor res
        cdef int resRows
        cdef int resCols

        res = _FloatTensor.new()
        if isinstance(second, numbers.Number):
            THFloatTensor_mul(res.native, self.native, second)
            return res
        else:
        
            M2 = second
            T = _FloatTensor.new()
            resRows = THFloatTensor_size(self.native, 0)
            resCols = THFloatTensor_size(M2.native, 1)
            res.resize2d(resRows, resCols)
            T.resize2d(resRows, resCols)
            THFloatTensor_addmm(res.native, 0, T.native, 1, self.native, M2.native)
            return res
        

    # ========== random ===============================

    def bernoulli(_FloatTensor self, float p=0.5):
        THFloatTensor_bernoulli(self.native, globalState.generator, p)
        return self

    def geometric(_FloatTensor self, float p=0.5):
        THFloatTensor_geometric(self.native, globalState.generator, p)
        return self


    def normal(_FloatTensor self, float mean=0, float stdv=1):
        THFloatTensor_normal(self.native, globalState.generator, mean, stdv)
        return self

    def exponential(_FloatTensor self, float _lambda=1):
        THFloatTensor_exponential(self.native, globalState.generator, _lambda)
        return self

    def cauchy(_FloatTensor self, float median=0, float sigma=1):
        THFloatTensor_cauchy(self.native, globalState.generator, median, sigma)
        return self

    def logNormal(_FloatTensor self, float mean=1, float stdv=2):
        THFloatTensor_logNormal(self.native, globalState.generator, mean, stdv)
        return self

    def uniform(_FloatTensor self, float a=0, float b=1):
        THFloatTensor_uniform(self.native, globalState.generator, a, b)
        return self


#    @staticmethod
cdef _FloatTensor_fromNative(THFloatTensor *tensorC, retain=True):
    if retain:
        THFloatTensor_retain(tensorC)
    tensor = _FloatTensor(_allocate=False)
    tensor.native = tensorC
    return tensor


def _asFloatTensor(myarray):
    cdef float[:] myarraymv
    cdef Storage._FloatStorage storage
    if str(type(myarray)) in ["<type 'numpy.ndarray'>", "<class 'numpy.ndarray'>"]:
        dims = len(myarray.shape)
        if dims >= 1:
            totalSize = 1
            size = Storage._LongStorage.newWithSize(dims)
            stride = Storage._LongStorage.newWithSize(dims)
            strideSoFar = 1
            for d in range(dims - 1, -1, -1):
                totalSize *= myarray.shape[d]
                size[d] = myarray.shape[d]
                stride[d] = strideSoFar
                strideSoFar *= size[d]
            myarraymv = myarray.reshape(totalSize)
            storage = Storage._FloatStorage.newWithData(myarraymv)
            Storage.THFloatStorage_retain(storage.native) # since newWithData takes ownership

            tensor = _FloatTensor.newWithStorage(storage, 0, size, stride)
            return tensor
        else:
            raise Exception('dims == {dims} not implemented; please raise an issue'.format(
                dims=dims))
    elif isinstance(myarray, array.array):
        myarraymv = myarray
        storage = Storage._FloatStorage.newWithData(myarraymv)
        Storage.THFloatStorage_retain(storage.native) # since newWithData takes ownership
        tensor = _FloatTensor.newWithStorage1d(storage, 0, len(myarray), 1)
        return tensor        
    else:
        raise Exception("not implemented")





cdef class _DoubleTensor(object):
    # properties are in the PyTorch.pxd file

#    def __cinit__(Tensor self, THFloatTensor *tensorC = NULL):
#        self.thFloatTensor = tensorC

    def __cinit__(self, *args, _allocate=True):
#        cdef _DoubleTensor childobject
        cdef THDoubleTensor *newTensorC
        cdef _DoubleTensor templateObject
        logger.debug('DoubleTensor.__cinit__')
#        cdef THDoubleStorage *storageC
#        cdef long addr
#        if len(kwargs) > 0:
#            raise Exception('cannot provide arguments to initializer')
        if _allocate:
            if len(args) == 1 and isinstance(args[0], _LongStorage):  # it's a size tensor
               self.native = THDoubleTensor_new()
               self.resize(args[0])
               return
            if len(args) == 1 and isinstance(args[0], _DoubleTensor):
               templateObject = args[0]
               newTensorC = THDoubleTensor_newClone(templateObject.native)
               self.native = newTensorC
               return
            for arg in args:
                if not isinstance(arg, int):
                    raise Exception('cannot provide arguments to initializer')
            if len(args) == 0:
                # print('no args, calling THDoubleTensor_new()')
                self.native = THDoubleTensor_new()
            elif len(args) == 1:
                # print('new tensor 1d length', args[0])
                self.native = THDoubleTensor_newWithSize1d(args[0])
            elif len(args) == 2:
                # print('args=2')
                self.native = THDoubleTensor_newWithSize2d(args[0], args[1])
            elif len(args) == 3:
                # print('new tensor 1d length', args[0])
                self.native = THDoubleTensor_newWithSize3d(args[0], args[1], args[2])
            elif len(args) == 4:
                # print('new tensor 1d length', args[0])
                self.native = THDoubleTensor_newWithSize4d(args[0], args[1], args[2], args[3])
            else:
                logger.error('Raising exception...')
                raise Exception('Not implemented, len(args)=' + str(len(args)))
#        else:
#            if len(args) > 0:
#                if len(args) > 1:
#                    raise Exception('args for allocate=false must be lenght 1 or 0')
#                if isinstance(args[0], _DoubleTensor):
#                    childobject = args[0]
#                    self.native = childobject.native
#                else:
#                    raise Exception('arg for allocate=0 must be tensor, but was ' + type(args[0]))

#    def __cinit__(self, THFloatTensor *tensorC, Storage storage):
#        self.thFloatTensor = tensorC
#        self.storage = storage

#    def __cinit__(self, Storage storage, offset, size0, stride0, size1, stride1):
#        self.thFloatTensor = THFloatTensor_newWithStorage2d(storage.thFloatStorage, offset, size0, stride0, size1, stride1)
#        self.storage = storage

    def __dealloc__(self):
        cdef int refCount
#        cdef int dims
#        cdef int size
#        cdef int i
#        cdef THFloatStorage *storage
#        logger.debug('__dealloc__ native %s', <long>(self.native) != 0)
        if <long>(self.native) != 0:
            refCount = THDoubleTensor_getRefCount(self.native)
            # print('DoubleTensor.dealloc old refcount', refCount)
   #        storage = THFloatTensor_storage(self.thFloatTensor)
   #        if storage == NULL:
   #            # print('   dealloc, storage NULL')
   #        else:
   #            # print('   dealloc, storage ', hex(<long>(storage)))
   #        dims = THFloatTensor_nDimension(self.thFloatTensor)
   #        # print('   dims of dealloc', dims)
   #        for i in range(dims):
   #            # print('   size[', i, ']', THFloatTensor_size(self.thFloatTensor, i))
            if refCount < 1:
                raise Exception('Unallocated an already deallocated tensor... :-O')  # Hmmm, seems this exceptoin wont go anywhere useful... :-P
            THDoubleTensor_free(self.native)
        else:
            logger.debug('__dealloc__ tensor never allocated')

    def nElement(_DoubleTensor self):
        return THDoubleTensor_nElement(self.native)

    def asNumpyTensor(_DoubleTensor self):
        cdef Storage._DoubleStorage storage
        cdef double *data
        cdef _DoubleTensor contig
        size = self.size()
        dims = len(size)
        if dims >= 1:
            totalSize = 1
            for d in range(dims - 1, -1, -1):
                totalSize *= size[d]
            myarray = np.zeros(totalSize, dtype=np.float32)
            contig = self.contiguous()
            data = contig.data()
            for i in range(totalSize):
                myarray[i] = data[i]
            shape = []
            for d in range(dims):
                shape.append(size[d])
            return myarray.reshape(shape)
        else:
            raise Exception('Not implemented for dims = {dims}'.format(dims=dims))

    @property
    def refCount(_DoubleTensor self):
        return THDoubleTensor_getRefCount(self.native)

    cdef double *data(_DoubleTensor self):
        return THDoubleTensor_data(self.native)

    cpdef int dims(self):
        return THDoubleTensor_nDimension(self.native)

    cpdef set1d(self, int x0, double value):
        THDoubleTensor_set1d(self.native, x0, value)

    cpdef set2d(self, int x0, int x1, double value):
        THDoubleTensor_set2d(self.native, x0, x1, value)

    cpdef double get1d(self, int x0):
        return THDoubleTensor_get1d(self.native, x0)

    cpdef double get2d(self, int x0, int x1):
        return THDoubleTensor_get2d(self.native, x0, x1)

    def __repr__(_DoubleTensor self):
        return self.as_string(self)

    def as_string(_DoubleTensor self, show_size=True):
        # assume 2d matrix for now
        cdef int size0
        cdef int size1
        dims = self.dims()
        if dims == 0:
            return '[torch.DoubleTensor with no dimension]\n'
        elif dims == 2:
            size0 = THDoubleTensor_size(self.native, 0)
            size1 = THDoubleTensor_size(self.native, 1)
            res = ''
            for r in range(size0):
                thisline = ''
                for c in range(size1):
                    if c > 0:
                        thisline += ' '
                    
                    thisline += str(self.get2d(r,c),)
                    
                res += thisline + '\n'
            if show_size:
                res += '[torch.DoubleTensor of size ' + ('%.0f' % size0) + 'x' + str(size1) + ']\n'
            return res
        elif dims == 1:
            size0 = THDoubleTensor_size(self.native, 0)
            res = ''
            thisline = ''
            for c in range(size0):
                if c > 0:
                    thisline += ' '
                
                thisline += str(self.get1d(c))
                
            res += thisline + '\n'
            if show_size:
                res += '[torch.DoubleTensor of size ' + str(size0) + ']\n'
            return res
        elif dims == 3:
            res = ''
            for d in range(self.size()[0]):
                res += '(' + str(d) + ',.,.) =\n'
                res += self[d].as_string(show_size=False)
            res += '\ntorch.DoubleTensor of size '
            first = True
            for d in self.size():
               if not first:
                  res += 'x'
               res += str(d)
               first = False
            res += ']'
            return res
        else:
            raise Exception("Not implemented: dims > 2")

    def __getitem__(_DoubleTensor self, int index):
        if self.dims() == 1:
            return self.get1d(index)
        cdef THDoubleTensor *res = THDoubleTensor_newSelect(self.native, 0, index)
        return _DoubleTensor_fromNative(res, False)

    def __setitem__(_DoubleTensor self, int index, double value):
        if self.dims() == 1:
            self.set1d(index, value)
        else:
            raise Exception("not implemented")

    def fill(_DoubleTensor self, double value):
        THDoubleTensor_fill(self.native, value)
        return self

    

    def itanh(_DoubleTensor self):
        THDoubleTensor_tanh(self.native, self.native)
        return self

    def isigmoid(_DoubleTensor self):
        THDoubleTensor_sigmoid(self.native, self.native)
        return self

    def icinv(_DoubleTensor self):
        THDoubleTensor_cinv(self.native, self.native)
        return self


    def tanh(_DoubleTensor self):
        cdef _DoubleTensor res = _DoubleTensor.new()
        THDoubleTensor_tanh(res.native, self.native)
        return res

    def sigmoid(_DoubleTensor self):
        cdef _DoubleTensor res = _DoubleTensor.new()
        THDoubleTensor_sigmoid(res.native, self.native)
        return res

    def cinv(_DoubleTensor self):
        cdef _DoubleTensor res = _DoubleTensor.new()
        THDoubleTensor_cinv(res.native, self.native)
        return res

    def neg(_DoubleTensor self):
        cdef _DoubleTensor res = _DoubleTensor.new()
        THDoubleTensor_neg(res.native, self.native)
        return res

    def ineg(_DoubleTensor self):
        THDoubleTensor_neg(self.native, self.native)
        return self

    

    
    def abs(_DoubleTensor self):
        cdef _DoubleTensor res = _DoubleTensor.new()
        THDoubleTensor_abs(res.native, self.native)
        return res

    def iabs(_DoubleTensor self):
        THDoubleTensor_abs(self.native, self.native)
        return self

    

    def size(_DoubleTensor self):
        cdef int dims = self.dims()
#        cdef LongStorage size
        if dims > 0:
            size = _LongStorage(dims)
            for d in range(dims):
                size[d] = THDoubleTensor_size(self.native, d)
            return size
        else:
            return None  # not sure how to handle this yet

    @staticmethod
    def new():
#        # print('allocate tensor')
        return _DoubleTensor()
#        return _FloatTensor_fromNative(newTensorC, False)

    def narrow(_DoubleTensor self, int dimension, long firstIndex, long size):
        cdef THDoubleTensor *narrowedC = THDoubleTensor_newNarrow(self.native, dimension, firstIndex, size)
        return _DoubleTensor_fromNative(narrowedC, retain=False)


    def contiguous(_DoubleTensor self):
        cdef THDoubleTensor *newTensorC = THDoubleTensor_newContiguous(self.native)
        return _DoubleTensor_fromNative(newTensorC)

    def resize1d(_DoubleTensor self, int size0):
        THDoubleTensor_resize1d(self.native, size0)
        return self

    def resize2d(_DoubleTensor self, int size0, int size1):
        THDoubleTensor_resize2d(self.native, size0, size1)
        return self

    def resize3d(_DoubleTensor self, int size0, int size1, int size2):
        THDoubleTensor_resize3d(self.native, size0, size1, size2)
        return self

    def resize4d(_DoubleTensor self, int size0, int size1, int size2, int size3):
        THDoubleTensor_resize4d(self.native, size0, size1, size2, size3)
        return self

    def resizeAs(_DoubleTensor self, _DoubleTensor model):
        THDoubleTensor_resizeAs(self.native, model.native)
        return self
    
    def resize(_DoubleTensor self, Storage._LongStorage size):
#        # print('_FloatTensor.resize size:', size)
        if len(size) == 0:
            return self
        cdef int dims = len(size)
#        # print('_FloatTensor.resize dims:', dims)
        if dims == 1:
            THDoubleTensor_resize1d(self.native, size[0])
        elif dims == 2:
            THDoubleTensor_resize2d(self.native, size[0], size[1])
        elif dims == 3:
            THDoubleTensor_resize3d(self.native, size[0], size[1], size[2])
        elif dims == 4:
            THDoubleTensor_resize4d(self.native, size[0], size[1], size[2], size[3])
        else:
            raise Exception('Not implemented for dims=' + str(dims))
        return self

    @staticmethod
    def newWithStorage(Storage._DoubleStorage storage, offset, Storage._LongStorage size, Storage._LongStorage stride):
#        # print('allocate tensor')
        cdef THDoubleTensor *newTensorC = THDoubleTensor_newWithStorage(storage.native, offset, size.native, stride.native)
        return _DoubleTensor_fromNative(newTensorC, False)

    @staticmethod
    def newWithStorage1d(Storage._DoubleStorage storage, offset, size0, stride0):
#        # print('allocate tensor')
        cdef THDoubleTensor *newTensorC = THDoubleTensor_newWithStorage1d(storage.native, offset, size0, stride0)
        return _DoubleTensor_fromNative(newTensorC, False)

    @staticmethod
    def newWithStorage2d(Storage._DoubleStorage storage, offset, size0, stride0, size1, stride1):
#        # print('allocate tensor')
        cdef THDoubleTensor *newTensorC = THDoubleTensor_newWithStorage2d(storage.native, offset, size0, stride0, size1, stride1)
        return _DoubleTensor_fromNative(newTensorC, False)

    @staticmethod
    def newWithStorage3d(Storage._DoubleStorage storage, offset, size0, stride0, size1, stride1, size2, stride2):
#        # print('allocate tensor')
        cdef THDoubleTensor *newTensorC = THDoubleTensor_newWithStorage3d(storage.native, offset, size0, stride0, size1, stride1,
            size2, stride2)
        return _DoubleTensor_fromNative(newTensorC, False)

    @staticmethod
    def newWithStorage4d(Storage._DoubleStorage storage, offset, size0, stride0, size1, stride1, size2, stride2,
            size3, stride3):
#        # print('allocate tensor')
        cdef THDoubleTensor *newTensorC = THDoubleTensor_newWithStorage4d(storage.native, offset, size0, stride0, size1, stride1,
            size2, stride2, size3, stride3)
        return _DoubleTensor_fromNative(newTensorC, False)

    def clone(_DoubleTensor self):
        cdef THDoubleTensor *newTensorC = THDoubleTensor_newClone(self.native)
        return _DoubleTensor_fromNative(newTensorC, False)

    def storage(_DoubleTensor self):
        cdef Storage.THDoubleStorage *storageC = THDoubleTensor_storage(self.native)
        if storageC == NULL:
            return None
        return Storage._DoubleStorage_fromNative(storageC)

    def __add__(_DoubleTensor self, second):
        # assume 2d matrix for now?
        cdef _DoubleTensor res = _DoubleTensor.new()
        cdef _DoubleTensor secondTensor
        if isinstance(second, numbers.Number):
            THDoubleTensor_add(res.native, self.native, second)
        else:
            secondTensor = second
            THDoubleTensor_cadd(res.native, self.native, 1, secondTensor.native)
        return res

    def cmul(_DoubleTensor self, second):
#        cdef _DoubleTensor res = _DoubleTensor.new()
        cdef _DoubleTensor secondTensor
        secondTensor = second
        THDoubleTensor_cmul(self.native, self.native, secondTensor.native)
        return self

    def __sub__(_DoubleTensor self, second):
        # assume 2d matrix for now?
        cdef _DoubleTensor res = _DoubleTensor.new()
        cdef _DoubleTensor secondTensor
        if isinstance(second, numbers.Number):
            THDoubleTensor_add(res.native, self.native, -second)
        else:
            secondTensor = second
            THDoubleTensor_cadd(res.native, self.native, -1, secondTensor.native)
        return res

    
    def __truediv__(_DoubleTensor self, second):
        # print('__div__')
        cdef _DoubleTensor res = _DoubleTensor.new()
        cdef _DoubleTensor secondTensor
        if isinstance(second, numbers.Number):
            THDoubleTensor_div(res.native, self.native, second)
        else:
            secondTensor = second
            THDoubleTensor_cdiv(res.native, self.native, secondTensor.native)
        return res

    def __itruediv__(_DoubleTensor self, second):
        cdef _DoubleTensor secondTensor
        if isinstance(second, numbers.Number):
            THDoubleTensor_div(self.native, self.native, second)
        else:
            secondTensor = second
            THDoubleTensor_cdiv(self.native, self.native, secondTensor.native)
        return self
    

    def __iadd__(_DoubleTensor self, second):
        cdef _DoubleTensor secondTensor
        if isinstance(second, numbers.Number):
            THDoubleTensor_add(self.native, self.native, second)
        else:
            secondTensor = second
            THDoubleTensor_cadd(self.native, self.native, 1, secondTensor.native)
        return self

    def __isub__(_DoubleTensor self, second):
        cdef _DoubleTensor secondTensor
        if isinstance(second, numbers.Number):
            THDoubleTensor_add(self.native, self.native, -second)
        else:
            secondTensor = second
            THDoubleTensor_cadd(self.native, self.native, -1, secondTensor.native)
        return self

    def __imul__(_DoubleTensor self, double value):
        THDoubleTensor_mul(self.native, self.native, value)
        return self

#    def __mul__(_DoubleTensor self, _DoubleTensor M2):
    def __mul__(_DoubleTensor self, second):
        cdef _DoubleTensor M2
        cdef _DoubleTensor T
        cdef _DoubleTensor res
        cdef int resRows
        cdef int resCols

        res = _DoubleTensor.new()
        if isinstance(second, numbers.Number):
            THDoubleTensor_mul(res.native, self.native, second)
            return res
        else:
        
            M2 = second
            T = _DoubleTensor.new()
            resRows = THDoubleTensor_size(self.native, 0)
            resCols = THDoubleTensor_size(M2.native, 1)
            res.resize2d(resRows, resCols)
            T.resize2d(resRows, resCols)
            THDoubleTensor_addmm(res.native, 0, T.native, 1, self.native, M2.native)
            return res
        

    # ========== random ===============================

    def bernoulli(_DoubleTensor self, float p=0.5):
        THDoubleTensor_bernoulli(self.native, globalState.generator, p)
        return self

    def geometric(_DoubleTensor self, float p=0.5):
        THDoubleTensor_geometric(self.native, globalState.generator, p)
        return self


    def normal(_DoubleTensor self, double mean=0, double stdv=1):
        THDoubleTensor_normal(self.native, globalState.generator, mean, stdv)
        return self

    def exponential(_DoubleTensor self, double _lambda=1):
        THDoubleTensor_exponential(self.native, globalState.generator, _lambda)
        return self

    def cauchy(_DoubleTensor self, double median=0, double sigma=1):
        THDoubleTensor_cauchy(self.native, globalState.generator, median, sigma)
        return self

    def logNormal(_DoubleTensor self, double mean=1, double stdv=2):
        THDoubleTensor_logNormal(self.native, globalState.generator, mean, stdv)
        return self

    def uniform(_DoubleTensor self, double a=0, double b=1):
        THDoubleTensor_uniform(self.native, globalState.generator, a, b)
        return self


#    @staticmethod
cdef _DoubleTensor_fromNative(THDoubleTensor *tensorC, retain=True):
    if retain:
        THDoubleTensor_retain(tensorC)
    tensor = _DoubleTensor(_allocate=False)
    tensor.native = tensorC
    return tensor


def _asDoubleTensor(myarray):
    cdef double[:] myarraymv
    cdef Storage._DoubleStorage storage
    if str(type(myarray)) in ["<type 'numpy.ndarray'>", "<class 'numpy.ndarray'>"]:
        dims = len(myarray.shape)
        if dims >= 1:
            totalSize = 1
            size = Storage._LongStorage.newWithSize(dims)
            stride = Storage._LongStorage.newWithSize(dims)
            strideSoFar = 1
            for d in range(dims - 1, -1, -1):
                totalSize *= myarray.shape[d]
                size[d] = myarray.shape[d]
                stride[d] = strideSoFar
                strideSoFar *= size[d]
            myarraymv = myarray.reshape(totalSize)
            storage = Storage._DoubleStorage.newWithData(myarraymv)
            Storage.THDoubleStorage_retain(storage.native) # since newWithData takes ownership

            tensor = _DoubleTensor.newWithStorage(storage, 0, size, stride)
            return tensor
        else:
            raise Exception('dims == {dims} not implemented; please raise an issue'.format(
                dims=dims))
    elif isinstance(myarray, array.array):
        myarraymv = myarray
        storage = Storage._DoubleStorage.newWithData(myarraymv)
        Storage.THDoubleStorage_retain(storage.native) # since newWithData takes ownership
        tensor = _DoubleTensor.newWithStorage1d(storage, 0, len(myarray), 1)
        return tensor        
    else:
        raise Exception("not implemented")





cdef class _ByteTensor(object):
    # properties are in the PyTorch.pxd file

#    def __cinit__(Tensor self, THFloatTensor *tensorC = NULL):
#        self.thFloatTensor = tensorC

    def __cinit__(self, *args, _allocate=True):
#        cdef _ByteTensor childobject
        cdef THByteTensor *newTensorC
        cdef _ByteTensor templateObject
        logger.debug('ByteTensor.__cinit__')
#        cdef THByteStorage *storageC
#        cdef long addr
#        if len(kwargs) > 0:
#            raise Exception('cannot provide arguments to initializer')
        if _allocate:
            if len(args) == 1 and isinstance(args[0], _LongStorage):  # it's a size tensor
               self.native = THByteTensor_new()
               self.resize(args[0])
               return
            if len(args) == 1 and isinstance(args[0], _ByteTensor):
               templateObject = args[0]
               newTensorC = THByteTensor_newClone(templateObject.native)
               self.native = newTensorC
               return
            for arg in args:
                if not isinstance(arg, int):
                    raise Exception('cannot provide arguments to initializer')
            if len(args) == 0:
                # print('no args, calling THByteTensor_new()')
                self.native = THByteTensor_new()
            elif len(args) == 1:
                # print('new tensor 1d length', args[0])
                self.native = THByteTensor_newWithSize1d(args[0])
            elif len(args) == 2:
                # print('args=2')
                self.native = THByteTensor_newWithSize2d(args[0], args[1])
            elif len(args) == 3:
                # print('new tensor 1d length', args[0])
                self.native = THByteTensor_newWithSize3d(args[0], args[1], args[2])
            elif len(args) == 4:
                # print('new tensor 1d length', args[0])
                self.native = THByteTensor_newWithSize4d(args[0], args[1], args[2], args[3])
            else:
                logger.error('Raising exception...')
                raise Exception('Not implemented, len(args)=' + str(len(args)))
#        else:
#            if len(args) > 0:
#                if len(args) > 1:
#                    raise Exception('args for allocate=false must be lenght 1 or 0')
#                if isinstance(args[0], _ByteTensor):
#                    childobject = args[0]
#                    self.native = childobject.native
#                else:
#                    raise Exception('arg for allocate=0 must be tensor, but was ' + type(args[0]))

#    def __cinit__(self, THFloatTensor *tensorC, Storage storage):
#        self.thFloatTensor = tensorC
#        self.storage = storage

#    def __cinit__(self, Storage storage, offset, size0, stride0, size1, stride1):
#        self.thFloatTensor = THFloatTensor_newWithStorage2d(storage.thFloatStorage, offset, size0, stride0, size1, stride1)
#        self.storage = storage

    def __dealloc__(self):
        cdef int refCount
#        cdef int dims
#        cdef int size
#        cdef int i
#        cdef THFloatStorage *storage
#        logger.debug('__dealloc__ native %s', <long>(self.native) != 0)
        if <long>(self.native) != 0:
            refCount = THByteTensor_getRefCount(self.native)
            # print('ByteTensor.dealloc old refcount', refCount)
   #        storage = THFloatTensor_storage(self.thFloatTensor)
   #        if storage == NULL:
   #            # print('   dealloc, storage NULL')
   #        else:
   #            # print('   dealloc, storage ', hex(<long>(storage)))
   #        dims = THFloatTensor_nDimension(self.thFloatTensor)
   #        # print('   dims of dealloc', dims)
   #        for i in range(dims):
   #            # print('   size[', i, ']', THFloatTensor_size(self.thFloatTensor, i))
            if refCount < 1:
                raise Exception('Unallocated an already deallocated tensor... :-O')  # Hmmm, seems this exceptoin wont go anywhere useful... :-P
            THByteTensor_free(self.native)
        else:
            logger.debug('__dealloc__ tensor never allocated')

    def nElement(_ByteTensor self):
        return THByteTensor_nElement(self.native)

    def asNumpyTensor(_ByteTensor self):
        cdef Storage._ByteStorage storage
        cdef unsigned char *data
        cdef _ByteTensor contig
        size = self.size()
        dims = len(size)
        if dims >= 1:
            totalSize = 1
            for d in range(dims - 1, -1, -1):
                totalSize *= size[d]
            myarray = np.zeros(totalSize, dtype=np.float32)
            contig = self.contiguous()
            data = contig.data()
            for i in range(totalSize):
                myarray[i] = data[i]
            shape = []
            for d in range(dims):
                shape.append(size[d])
            return myarray.reshape(shape)
        else:
            raise Exception('Not implemented for dims = {dims}'.format(dims=dims))

    @property
    def refCount(_ByteTensor self):
        return THByteTensor_getRefCount(self.native)

    cdef unsigned char *data(_ByteTensor self):
        return THByteTensor_data(self.native)

    cpdef int dims(self):
        return THByteTensor_nDimension(self.native)

    cpdef set1d(self, int x0, unsigned char value):
        THByteTensor_set1d(self.native, x0, value)

    cpdef set2d(self, int x0, int x1, unsigned char value):
        THByteTensor_set2d(self.native, x0, x1, value)

    cpdef unsigned char get1d(self, int x0):
        return THByteTensor_get1d(self.native, x0)

    cpdef unsigned char get2d(self, int x0, int x1):
        return THByteTensor_get2d(self.native, x0, x1)

    def __repr__(_ByteTensor self):
        return self.as_string(self)

    def as_string(_ByteTensor self, show_size=True):
        # assume 2d matrix for now
        cdef int size0
        cdef int size1
        dims = self.dims()
        if dims == 0:
            return '[torch.ByteTensor with no dimension]\n'
        elif dims == 2:
            size0 = THByteTensor_size(self.native, 0)
            size1 = THByteTensor_size(self.native, 1)
            res = ''
            for r in range(size0):
                thisline = ''
                for c in range(size1):
                    if c > 0:
                        thisline += ' '
                    
                    thisline += str(self.get2d(r,c),)
                    
                res += thisline + '\n'
            if show_size:
                res += '[torch.ByteTensor of size ' + ('%.0f' % size0) + 'x' + str(size1) + ']\n'
            return res
        elif dims == 1:
            size0 = THByteTensor_size(self.native, 0)
            res = ''
            thisline = ''
            for c in range(size0):
                if c > 0:
                    thisline += ' '
                
                thisline += str(self.get1d(c))
                
            res += thisline + '\n'
            if show_size:
                res += '[torch.ByteTensor of size ' + str(size0) + ']\n'
            return res
        elif dims == 3:
            res = ''
            for d in range(self.size()[0]):
                res += '(' + str(d) + ',.,.) =\n'
                res += self[d].as_string(show_size=False)
            res += '\ntorch.ByteTensor of size '
            first = True
            for d in self.size():
               if not first:
                  res += 'x'
               res += str(d)
               first = False
            res += ']'
            return res
        else:
            raise Exception("Not implemented: dims > 2")

    def __getitem__(_ByteTensor self, int index):
        if self.dims() == 1:
            return self.get1d(index)
        cdef THByteTensor *res = THByteTensor_newSelect(self.native, 0, index)
        return _ByteTensor_fromNative(res, False)

    def __setitem__(_ByteTensor self, int index, unsigned char value):
        if self.dims() == 1:
            self.set1d(index, value)
        else:
            raise Exception("not implemented")

    def fill(_ByteTensor self, unsigned char value):
        THByteTensor_fill(self.native, value)
        return self

    

    

    def size(_ByteTensor self):
        cdef int dims = self.dims()
#        cdef LongStorage size
        if dims > 0:
            size = _LongStorage(dims)
            for d in range(dims):
                size[d] = THByteTensor_size(self.native, d)
            return size
        else:
            return None  # not sure how to handle this yet

    @staticmethod
    def new():
#        # print('allocate tensor')
        return _ByteTensor()
#        return _FloatTensor_fromNative(newTensorC, False)

    def narrow(_ByteTensor self, int dimension, long firstIndex, long size):
        cdef THByteTensor *narrowedC = THByteTensor_newNarrow(self.native, dimension, firstIndex, size)
        return _ByteTensor_fromNative(narrowedC, retain=False)


    def contiguous(_ByteTensor self):
        cdef THByteTensor *newTensorC = THByteTensor_newContiguous(self.native)
        return _ByteTensor_fromNative(newTensorC)

    def resize1d(_ByteTensor self, int size0):
        THByteTensor_resize1d(self.native, size0)
        return self

    def resize2d(_ByteTensor self, int size0, int size1):
        THByteTensor_resize2d(self.native, size0, size1)
        return self

    def resize3d(_ByteTensor self, int size0, int size1, int size2):
        THByteTensor_resize3d(self.native, size0, size1, size2)
        return self

    def resize4d(_ByteTensor self, int size0, int size1, int size2, int size3):
        THByteTensor_resize4d(self.native, size0, size1, size2, size3)
        return self

    def resizeAs(_ByteTensor self, _ByteTensor model):
        THByteTensor_resizeAs(self.native, model.native)
        return self
    
    def resize(_ByteTensor self, Storage._LongStorage size):
#        # print('_FloatTensor.resize size:', size)
        if len(size) == 0:
            return self
        cdef int dims = len(size)
#        # print('_FloatTensor.resize dims:', dims)
        if dims == 1:
            THByteTensor_resize1d(self.native, size[0])
        elif dims == 2:
            THByteTensor_resize2d(self.native, size[0], size[1])
        elif dims == 3:
            THByteTensor_resize3d(self.native, size[0], size[1], size[2])
        elif dims == 4:
            THByteTensor_resize4d(self.native, size[0], size[1], size[2], size[3])
        else:
            raise Exception('Not implemented for dims=' + str(dims))
        return self

    @staticmethod
    def newWithStorage(Storage._ByteStorage storage, offset, Storage._LongStorage size, Storage._LongStorage stride):
#        # print('allocate tensor')
        cdef THByteTensor *newTensorC = THByteTensor_newWithStorage(storage.native, offset, size.native, stride.native)
        return _ByteTensor_fromNative(newTensorC, False)

    @staticmethod
    def newWithStorage1d(Storage._ByteStorage storage, offset, size0, stride0):
#        # print('allocate tensor')
        cdef THByteTensor *newTensorC = THByteTensor_newWithStorage1d(storage.native, offset, size0, stride0)
        return _ByteTensor_fromNative(newTensorC, False)

    @staticmethod
    def newWithStorage2d(Storage._ByteStorage storage, offset, size0, stride0, size1, stride1):
#        # print('allocate tensor')
        cdef THByteTensor *newTensorC = THByteTensor_newWithStorage2d(storage.native, offset, size0, stride0, size1, stride1)
        return _ByteTensor_fromNative(newTensorC, False)

    @staticmethod
    def newWithStorage3d(Storage._ByteStorage storage, offset, size0, stride0, size1, stride1, size2, stride2):
#        # print('allocate tensor')
        cdef THByteTensor *newTensorC = THByteTensor_newWithStorage3d(storage.native, offset, size0, stride0, size1, stride1,
            size2, stride2)
        return _ByteTensor_fromNative(newTensorC, False)

    @staticmethod
    def newWithStorage4d(Storage._ByteStorage storage, offset, size0, stride0, size1, stride1, size2, stride2,
            size3, stride3):
#        # print('allocate tensor')
        cdef THByteTensor *newTensorC = THByteTensor_newWithStorage4d(storage.native, offset, size0, stride0, size1, stride1,
            size2, stride2, size3, stride3)
        return _ByteTensor_fromNative(newTensorC, False)

    def clone(_ByteTensor self):
        cdef THByteTensor *newTensorC = THByteTensor_newClone(self.native)
        return _ByteTensor_fromNative(newTensorC, False)

    def storage(_ByteTensor self):
        cdef Storage.THByteStorage *storageC = THByteTensor_storage(self.native)
        if storageC == NULL:
            return None
        return Storage._ByteStorage_fromNative(storageC)

    def __add__(_ByteTensor self, second):
        # assume 2d matrix for now?
        cdef _ByteTensor res = _ByteTensor.new()
        cdef _ByteTensor secondTensor
        if isinstance(second, numbers.Number):
            THByteTensor_add(res.native, self.native, second)
        else:
            secondTensor = second
            THByteTensor_cadd(res.native, self.native, 1, secondTensor.native)
        return res

    def cmul(_ByteTensor self, second):
#        cdef _ByteTensor res = _ByteTensor.new()
        cdef _ByteTensor secondTensor
        secondTensor = second
        THByteTensor_cmul(self.native, self.native, secondTensor.native)
        return self

    def __sub__(_ByteTensor self, second):
        # assume 2d matrix for now?
        cdef _ByteTensor res = _ByteTensor.new()
        cdef _ByteTensor secondTensor
        if isinstance(second, numbers.Number):
            THByteTensor_add(res.native, self.native, -second)
        else:
            secondTensor = second
            THByteTensor_cadd(res.native, self.native, -1, secondTensor.native)
        return res

    
    def __floordiv__(_ByteTensor self, second):
        cdef _ByteTensor res = _ByteTensor.new()
        cdef _ByteTensor secondTensor
        if isinstance(second, numbers.Number):
            THByteTensor_div(res.native, self.native, second)
        else:
            secondTensor = second
            THByteTensor_cdiv(res.native, self.native, secondTensor.native)
        return res

    def __ifloordiv__(_ByteTensor self, second):
        cdef _ByteTensor secondTensor
        if isinstance(second, numbers.Number):
            THByteTensor_div(self.native, self.native, second)
        else:
            secondTensor = second
            THByteTensor_cdiv(self.native, self.native, secondTensor.native)
        return self
    

    def __iadd__(_ByteTensor self, second):
        cdef _ByteTensor secondTensor
        if isinstance(second, numbers.Number):
            THByteTensor_add(self.native, self.native, second)
        else:
            secondTensor = second
            THByteTensor_cadd(self.native, self.native, 1, secondTensor.native)
        return self

    def __isub__(_ByteTensor self, second):
        cdef _ByteTensor secondTensor
        if isinstance(second, numbers.Number):
            THByteTensor_add(self.native, self.native, -second)
        else:
            secondTensor = second
            THByteTensor_cadd(self.native, self.native, -1, secondTensor.native)
        return self

    def __imul__(_ByteTensor self, unsigned char value):
        THByteTensor_mul(self.native, self.native, value)
        return self

#    def __mul__(_ByteTensor self, _ByteTensor M2):
    def __mul__(_ByteTensor self, second):
        cdef _ByteTensor M2
        cdef _ByteTensor T
        cdef _ByteTensor res
        cdef int resRows
        cdef int resCols

        res = _ByteTensor.new()
        if isinstance(second, numbers.Number):
            THByteTensor_mul(res.native, self.native, second)
            return res
        else:
        
            raise Exception('Invalid arg type for second: ' + str(type(second)))
        

    # ========== random ===============================

    def bernoulli(_ByteTensor self, float p=0.5):
        THByteTensor_bernoulli(self.native, globalState.generator, p)
        return self

    def geometric(_ByteTensor self, float p=0.5):
        THByteTensor_geometric(self.native, globalState.generator, p)
        return self



#    @staticmethod
cdef _ByteTensor_fromNative(THByteTensor *tensorC, retain=True):
    if retain:
        THByteTensor_retain(tensorC)
    tensor = _ByteTensor(_allocate=False)
    tensor.native = tensorC
    return tensor





cdef class GlobalState(object):
    def __cinit__(GlobalState self):
        pass

    def __dealloc__(self):
        pass

    def getLua(self):
        return LuaState_fromNative(self.L)









def _popFloatTensor():
    global globalState
    cdef THFloatTensor *tensorC = popFloatTensor(globalState.L)
    return _FloatTensor_fromNative(tensorC)

def _pushFloatTensor(_FloatTensor tensor):
    global globalState
    pushFloatTensor(globalState.L, tensor.native)





def _popDoubleTensor():
    global globalState
    cdef THDoubleTensor *tensorC = popDoubleTensor(globalState.L)
    return _DoubleTensor_fromNative(tensorC)

def _pushDoubleTensor(_DoubleTensor tensor):
    global globalState
    pushDoubleTensor(globalState.L, tensor.native)







# there's probably an official Torch way of doing this








cpdef int getFloatPrediction(_FloatTensor output):
    cdef int prediction = 0
    cdef float maxSoFar = output[0]
    cdef float thisValue = 0
    cdef int i = 0
    for i in range(THFloatTensor_size(output.native, 0)):
        thisValue = THFloatTensor_get1d(output.native, i)
        if thisValue > maxSoFar:
            maxSoFar = thisValue
            prediction = i
    return prediction + 1





cpdef int getDoublePrediction(_DoubleTensor output):
    cdef int prediction = 0
    cdef double maxSoFar = output[0]
    cdef double thisValue = 0
    cdef int i = 0
    for i in range(THDoubleTensor_size(output.native, 0)):
        thisValue = THDoubleTensor_get1d(output.native, i)
        if thisValue > maxSoFar:
            maxSoFar = thisValue
            prediction = i
    return prediction + 1







cdef GlobalState globalState

def getGlobalState():
    global globalState
    return globalState

def require(libName):
    global globalState
    cdef lua_State *L
    L = globalState.L
    luaRequire(L, libName.encode('utf-8'))

def getGlobal(name):
    global globalState
    cdef lua_State *L
    L = globalState.L
        

def init():
    global globalState
    # print('initializing PyTorch...')
    globalState = GlobalState()
    globalState.L = luaInit()
    globalState.generator = <THGenerator *>(getGlobal2(globalState.L, 'torch', '_gen'))
    # print('generator null:', globalState.generator == NULL)
    # print(' ... PyTorch initialized')

init()

from floattensor import *

# ==== Nn ==================================
cdef class Nn(object):  # just used to provide the `nn.` syntax
    def collectgarbage(self):
        collectGarbage(globalState.L)

#    def Linear(self, inputSize, outputSize):
#        return Linear(inputSize, outputSize)
