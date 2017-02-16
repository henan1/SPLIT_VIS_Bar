#smake
#  @@ Makefile for flow vis lib
#  @@ Jian Chen (jichen@umbc.edu)
# please replace "/usr/include/vtk" by your own vtk directory

MACHINE= $(shell uname -s)
VTKPath = /home/wng2/hev/external/vtk/installed/lib/vtk-5.10
VTKINCLUDE = /home/wng2/hev/external/vtk/installed/include/vtk-5.10
#/usr/include/vtk
#VTKPath = /usr/local/Cellar/vtk/7.0.0_1
#-I/usr/include/vtk 

ifeq ($(MACHINE),Darwin)
	OPENGL_INC= -FOpenGL -I$(VTKINCLUDE)
	OPENGL_LIB= -framework OpenGL -framework GLUT -framework Cocoa 
	LLDLIBS = -L$(VTKPath)  -lvtkCommonCore -lvtkCommonDataModel -lvtkFiltersGeometry
else
	ifeq ($(wildcard $(VTKPath)), $(VTKPath))
		CXX = g++ -D_VTK
		OPENGL_INC= -I/usr/include -I$(VTKINCLUDE)
		OPENGL_LIB= -L/usr/lib64   -L$(VTKPath) 
		LLDLIBS = -L$(VTKPath) -lvtkCommon -lvtkHybrid
	else
		CXX=g++ 
		OPENGL_INC= -I/usr/include 
		OPENGL_LIB= -L/usr/lib64   
		LLDLIBS = 
	endif
endif

COMPILER_FLAGS= -g -D_VTK

INCLUDE= $(OPENGL_INC)
LIBS= $(OPENGL_LIB) $(LLDLIBS)

TARGETS = Contour

SRCS = main.cpp  svContour.cpp 
OBJECTS = main.o svContour.o

default: $(TARGETS)

OBJS = $(SRCS:.cpp=.o)
.SUFFIXES: .o .cpp

.cpp.o:
	$(CXX) -c -Wno-deprecated  $(COMPILER_FLAGS) -o $@ $< $(INCLUDE)

Contour: main.o svContour.o
	$(CXX) $(COMPILER_FLAGS) $(LIBS) main.o svContour.o -o Contour 

clean:
	rm -f $(OBJS) $(TARGETS) *~
install:
	cp ./Contour ../../bin
