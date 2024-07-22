
default:
	@scons -j8 

clean:
	find . -name '*.o' -delete
	find . -name '*.so' -delete
	find . -name '*.os' -delete
	rm -f .sconsign.dblite
	rm -rf __pycache__ 
	rm -rf lib

