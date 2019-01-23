
def toTarget(path):
  return path.replace('/','-').replace('_test.c','')

def createTests(paths):
  for path in paths:
    native.cxx_test(
      name = toTarget(path),
      srcs = [path],
      deps = [':klib']
    )

  return [':' + toTarget(path) for path in paths] 

