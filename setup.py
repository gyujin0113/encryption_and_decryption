from setuptools import setup, Extension
from Cython.Build import cythonize
import numpy

extensions = [
    Extension(
        "example",  # 모듈명 (파일명과 동일하게 설정)
        ["example.pyx"],
        include_dirs=[numpy.get_include()],  # NumPy 지원 추가
    )
]

setup(
    ext_modules=cythonize(extensions, compiler_directives={"language_level": "3"}),
)