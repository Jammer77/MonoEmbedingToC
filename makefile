#https://www.mono-project.com/download/stable/
COMPILER=gcc
LDFLAGS = -I/Mono/include/mono-2.0 `pkg-config --cflags --libs mono-2`

exe: 
	$(COMPILER) mono.c $(LDFLAGS) 

clear:
	rm -v -f $(TILE_ENGINE_OBJECTS)