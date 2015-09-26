# {{header1}}
# {{header2}}

from __future__ import print_function

import cython
cimport cython

cimport cpython.array
import array

from math import log10, floor

from Storage cimport *
from nnWrapper cimport *
cimport PyTorch
import logging


logger = logging.getLogger(__name__)
#logger.setLevel(logging.DEBUG)


{% set types = {
    'Long': {'real': 'long'},
    'Float': {'real': 'float'}, 
    'Double': {'real': 'double'},
    'Byte': {'real': 'unsigned char'}
}
%}

cdef floatToString(float floatValue):
    return '%.6g'% floatValue

{% for Real in types %}
{% set real = types[Real]['real'] %}
cdef class {{Real}}Storage(object):
    # properties in .pxd file of same name

    def __init__(self, *args, **kwargs):
        # print('{{Real}}Storage.__cinit__')
        logger.debug('{{Real}}Storage.__cinit__')
        if len(args) > 0:
            for arg in args:
                if not isinstance(arg, int):
                    raise Exception('cannot provide arguments to initializer')
            if len(args) == 1:
                self.th{{Real}}Storage = TH{{Real}}Storage_newWithSize(args[0])
            else:
                raise Exception('cannot provide arguments to initializer')
        if len(kwargs) > 0:
            raise Exception('cannot provide arguments to initializer')

    def __repr__({{Real}}Storage self):
        cdef int size0
        size0 = TH{{Real}}Storage_size(self.th{{Real}}Storage)
        res = ''
#        thisline = ''
        for c in range(size0):
            res += ' '
#            if c > 0:
#                thisline += ' '
            {% if Real in ['Float', 'Double'] %}
            res += floatToString(self[c])
            {% else %}
            res += str(self[c])
            {% endif %}
            res += '\n'
#        res += thisline + '\n'
        res += '[torch.{{Real}}Storage of size ' + str(size0) + ']\n'
        return res

    @staticmethod
    def new():
        # print('allocate storage')
        return {{Real}}Storage_fromNative(TH{{Real}}Storage_new(), retain=False)

    @staticmethod
    def newWithData({{real}} [:] data):
        cdef TH{{Real}}Storage *storageC = TH{{Real}}Storage_newWithData(&data[0], len(data))
        # print('allocate storage')
        return {{Real}}Storage_fromNative(storageC, retain=False)

    @property
    def refCount({{Real}}Storage self):
        return TH{{Real}}Storage_getRefCount(self.th{{Real}}Storage)

    def dataAddr({{Real}}Storage self):
        cdef {{real}} *data = TH{{Real}}Storage_data(self.th{{Real}}Storage)
        cdef long dataAddr = pointerAsInt(data)
        return dataAddr

    @staticmethod
    def newWithSize(long size):
        cdef TH{{Real}}Storage *storageC = TH{{Real}}Storage_newWithSize(size)
        # print('allocate storage')
        return {{Real}}Storage_fromNative(storageC, retain=False)

    cpdef long size(self):
        return TH{{Real}}Storage_size(self.th{{Real}}Storage)

    def __dealloc__(self):
        # print('TH{{Real}}Storage.dealloc, old refcount ', TH{{Real}}Storage_getRefCount(self.th{{Real}}Storage))
        # print('   dealloc storage: ', hex(<long>(self.th{{Real}}Storage)))
        TH{{Real}}Storage_free(self.th{{Real}}Storage)

    def __iter__(self):
        cdef int size0
        size0 = TH{{Real}}Storage_size(self.th{{Real}}Storage)
        for c in range(size0):
            yield self[c]

    def __getitem__({{Real}}Storage self, int index):
        cdef {{real}} res = TH{{Real}}Storage_get(self.th{{Real}}Storage, index)
        return res

    def __setitem__({{Real}}Storage self, int index, {{real}} value):
        TH{{Real}}Storage_set(self.th{{Real}}Storage, index, value)


cdef {{Real}}Storage_fromNative(TH{{Real}}Storage *storageC, retain=True):
    if retain:
        TH{{Real}}Storage_retain(storageC)
    storage = {{Real}}Storage()
    storage.th{{Real}}Storage = storageC
    return storage
{% endfor %}

