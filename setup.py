from distutils.command.build_py import build_py
import os
from setuptools import setup


class GenerateBindings(build_py):
    os.system('echo generating bindings')
    os.system('mkdir -p src-generated/main/python')
    os.system('thrift -r --gen py --out src-generated/main/python -I thrift.model/thrift-schema thrift-schema/dow_jones_index.thrift')
    os.system('echo generated bindings')

setup(name='serializer-demo-thrift-schema',
      version='0.0.1',
      description='Demo thrift schema for dow jones free data set',
      author='Yves',
      package_dir={'dow_jones_index_thrift': 'src-generated/main/python/dow_jones_index_thrift'},
      packages=['dow_jones_index_thrift'],
      cmdclass={'build_py': GenerateBindings}
     )
