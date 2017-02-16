#smake
#  @@ Makefile for flow vis lib
#  @@ Jian Chen (jichen@umbc.edu)
# please replace "/usr/include/vtk" by your own vtk directory

MACHINE= $(shell uname -s)

ifeq ($(MACHINE),Darwin)
	OPENGL_INC= -FOpenGL
	OPENGL_LIB= -framework OpenGL -framework GLUT -framework Cocoa 
else
	OPENGL_INC= -I/usr/include 
	OPENGL_LIB= -L/usr/lib64   

endif

CXX = g++ -D_VTK

COMPILER_FLAGS= -g

INCLUDE= $(OPENGL_INC)
LIBS= $(OPENGL_LIB)

TARGETS = genVTK

SRCS = genVTK.cpp  genVTKfromOrg.cpp 
OBJECTS = genVTK.o genVTKfromOrg.o

default: $(TARGETS)

OBJS = $(SRCS:.cpp=.o)
.SUFFIXES: .o .cpp

.cpp.o:
	$(CXX) -c -Wno-deprecated  $(COMPILER_FLAGS) -o $@ $< $(INCLUDE)

$(TARGETS): genVTK.o genVTKfromOrg.o
	$(CXX) $(COMPILER_FLAGS) $(LIBS) genVTK.o genVTKfromOrg.o -o $(TARGETS)

install:
	cp -f genVTK ../../bin/
clean:
	rm -f $(OBJS) $(TARGETS) *~
