from setuptools import Extension, setup
from Cython.Build import cythonize

ext_modules = [Extension('src.module', sources=["src/module.pyx"]), Extension('src.hostlib', sources=["src/hostlib.pyx", "src/host.c"])]

cythonize(
    ext_modules,
    compiler_directives={"cdivision": True,
                         "embedsignature": True,
                         "boundscheck": False,
                         "wraparound": False}
)