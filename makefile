COMPILER=gcc
LDFLAGS = `pkg-config --cflags --libs mono-2`

exe: 
	$(COMPILER) mono.c $(LDFLAGS) 

clear:
	rm -v -f $(TILE_ENGINE_OBJECTS)