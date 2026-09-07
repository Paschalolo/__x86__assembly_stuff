
MFILE = $(FILE).cpp
ASMFILE=$(FILE).asm
ASMOBJ = $(FILE)_a.o
GCC = g++-14
GCCFLAGS = -Wall -Wextra -Werror -Wpedantic -Wnull-dereference  -Wshadow -mavx2 -Wconversion -Wduplicated-branches -Wlogical-op -O3  -Wformat=2   -pthread -mavx2 -flto -fno-exceptions
C23 = -std=c++23
INCLUDES = -I includes -I src 
COMPILE.c = $(GCC) $(GCCFLAGS) $(INCLUDES) $(C23)
COMPILEASM.o = nasm -felf64 -g 
COMPILEYASM.o = yasm -g dwarf2 -felf64
vpath %.c src 
vpath %.cc src 
vpath %.cpp src 
vpath %.h includes 

run : $(MFILE) $(HARGS)
	$(COMPILEASM.o) ./src/$(ASMFILE) -o ./src/$(ASMOBJ)
	$(COMPILE.c) $<  ./src/$(ASMOBJ) -o ./bin/$(FILE)  && ./bin/$(FILE)  
run2 : 
	$(COMPILEASM.o) ./src/$(ASMFILE) -o ./src/$(ASMOBJ)
run3 : 
	$(COMPILE.c) ./src/$(MFILE) -o ./bin/$(FILE)
cc1: 
	touch src/$(MFILE)
create: 
	touch src/$(MFILE) && touch src/$(ASMFILE)
create1: 
	touch src/$(ASMFILE)
push : 
	git add  . && git commit -m "update x86 sim DDD" && git push origin main
clean : 
	rm src/*.0
