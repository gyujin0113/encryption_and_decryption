import numpy as np
cimport numpy as cnp  # Cython에서 numpy 지원

# NumPy 배열 초기화
cnp.import_array()

cdef class Example:
    cdef double param  # 내부 변수 (C 타입)

    def __init__(self, double param=1.0):
        self.param = param

    cpdef cnp.ndarray predict(self, cnp.ndarray[cnp.double_t, ndim=1] X):
        # 배열의 크기 추출
        cdef Py_ssize_t size = X.shape[0]  # 배열의 첫 번째 차원의 크기 명시

        # 결과 배열 생성
        cdef cnp.ndarray[cnp.double_t, ndim=1] result = np.empty(size, dtype=np.float64)

        # 예측 값 계산
        for i in range(size):
            result[i] = X[i] * self.param + np.random.randn() * 0.1

        return result