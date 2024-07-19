from coda import scanFiles

env = Environment(CC ='g++')
env.Append(CPPPATH = ['#src/libsrc'])
env.Append(CPPFLAGS = ['-fPIC'])#,'-fpermissive'])
env.Append(CXXFLAGS = ['-std=c++11'])

# Build libraries
libc   = env.Library('lib/evio',    scanFiles('src/libsrc',   accept=[ "*.c"]) )
#libcpp = env.Library('lib/evioxx',  scanFiles('src/libsrc++', accept=[ "*.cc"]))
#Depends(libcpp, libc)

# Might as well?
#env.SharedLibrary('lib/evio',    scanFiles('src/libsrc',   accept=[ "*.c"]) )
#env.SharedLibrary('lib/evioxx',  scanFiles('src/libsrc++', accept=[ "*.cc"]))

# Executables:
#xml = env.Program('bin/evio2xml', 'src/execsrc/evio2xml.c')
#cop = env.Program('bin/eviocopy', 'src/execsrc/eviocopy.c')
#cat = env.Program('bin/evioCat',  'src/execsrc/evioCat.cc')
#ex1 = env.Program('bin/etst1',    'src/examples/etst1.cc')
#ex2 = env.Program('bin/etst2',    'src/examples/etst2.cc')
#ex3 = env.Program('bin/etst3',    'src/examples/etst3.cc')
#ex4 = env.Program('bin/etst4',    'src/examples/etst4.cc')
#ex5 = env.Program('bin/etst5',    'src/examples/etst5.cc')
#ex6 = env.Program('bin/etst6',    'src/examples/etst6.cc')
#ex7 = env.Program('bin/etst7',    'src/examples/etst7.cc')
#ex8 = env.Program('bin/etst8',    'src/examples/etst8.cc')
#ex9 = env.Program('bin/etst9',    'src/examples/etst9.cc')

#Depends(xml, libcpp)
#Depends(cop, libcpp)
#Depends(cat, libcpp)
#Depends(ex1, libcpp)
#Depends(ex2, libcpp)
#Depends(ex3, libcpp)
#Depends(ex4, libcpp)
#Depends(ex5, libcpp)
#Depends(ex6, libcpp)
#Depends(ex7, libcpp)
#Depends(ex8, libcpp)
#Depends(ex9, libcpp)

