load('//:tests.bzl', 'createTests')
load('//:subdir_glob.bzl', 'subdir_glob')
load('//:buckaroo_macros.bzl', 'buckaroo_deps_from_package')

cxx_library(
  name = 'miniz',
  header_namespace = '',
  srcs = glob(['*.c']),
  exported_headers = subdir_glob([
    ('','*.h')
  ]),
  visibility = [
    'PUBLIC',
  ],
)

cxx_binary(
  name = 'test',
  srcs = glob(['tests/*.cpp']),
  headers = subdir_glob([
    ('tests', '*.h')
  ]),
  deps = [':miniz']
)
