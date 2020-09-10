default: echowo_cpp

echowo_cpp: Echowo.hx
	haxe Echowo.hx -m Echowo -cpp echowo_build

clean:
	rm -rf echowo_build
