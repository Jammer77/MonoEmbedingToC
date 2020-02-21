#https://www.mono-project.com/download/stable/
COMPILER=gcc
LDFLAGS = -I/Mono/include/mono-2.0 -L/Mono/lib -lmono-2.0-sgen `pkg-config --cflags --libs mono-2`

exe: 
	export PKG_CONFIG_PATH="/Mono/lib/pkgconfig/"
	$(COMPILER) mono.c $(LDFLAGS) 

clear:
	rm -v -f $(TILE_ENGINE_OBJECTS)