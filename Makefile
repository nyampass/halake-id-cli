build:
	clj -M -m cljs.main --optimizations advanced -c halake-id-cli.core
	mkdir -p dist/windows
	nexe -t windows-x86-6.11.2 -i out/main.js -o dist/windows/halake.exe
	mkdir -p dist/mac
	nexe -t mac-x64-8.4.0 -i out/main.js -o dist/windows/halake
