from coda import scanFiles

env = Environment(CC ='g++')
env.Append(CPPPATH = ['#src/libsrc','#src/libsrc++'])
env.Append(CPPFLAGS = ['-fPIC','-Wno-format-security','-Wno-comment'])
env.Append(CXXFLAGS = ['-std=c++17','-Wno-format-security','-Wno-comment'])

# Static libraries:
libc   = env.Library('lib/evio',    scanFiles('src/libsrc',   accept=[ "*.c"]) )
libcpp = env.Library('lib/evioxx',  scanFiles('src/libsrc++', accept=[ "*.cc"]))
Depends(libcpp, libc)

# Shared libraries:
from platform import system
if system() != 'Darwin':
    env.SharedLibrary('lib/evio',    scanFiles('src/libsrc',   accept=[ "*.c"]) )
    env.SharedLibrary('lib/evioxx',  scanFiles('src/libsrc++', accept=[ "*.cc"]))

# Executables:
xml = env.Program('bin/evio2xml', 'src/execsrc/evio2xml.c', LIBS=['z','evio','evioxx','expat'], LIBPATH=['lib'])
cat = env.Program('bin/eviocat', 'src/execsrc/evioCat.cc', LIBS=['evio','evioxx','xml2','expat'], LIBPATH=['lib'])
cop = env.Program('bin/eviocopy', 'src/execsrc/eviocopy.c', LIBS=['evio','evioxx','xml2','expat'], LIBPATH=['lib'])
Depends(xml, libcpp)
Depends(cat, libcpp)
Depends(cop, libcpp)

