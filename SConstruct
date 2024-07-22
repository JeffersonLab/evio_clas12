from coda import scanFiles

env = Environment(CC ='g++')
env.Append(CPPPATH = ['#src/libsrc','#src/libsrc++'])
env.Append(CPPFLAGS = ['-fPIC'])
env.Append(CXXFLAGS = ['-std=c++17'])

# Static libraries:
libc   = env.Library('lib/evio',    scanFiles('src/libsrc',   accept=[ "*.c"]) )
libcpp = env.Library('lib/evioxx',  scanFiles('src/libsrc++', accept=[ "*.cc"]))
Depends(libcpp, libc)

# Shared libraries:
env.SharedLibrary('lib/evio',    scanFiles('src/libsrc',   accept=[ "*.c"]) )
env.SharedLibrary('lib/evioxx',  scanFiles('src/libsrc++', accept=[ "*.cc"]))

# Executables:
xml = env.Program('bin/evio2xml', 'src/execsrc/evio2xml.c', LIBS=['evio'], LIBPATH='lib')
Depends(xml, libcpp)

