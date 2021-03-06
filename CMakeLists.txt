cmake_minimum_required(VERSION 2.8.12)
project(SPLIT_VIS2)

set(CMAKE_INSTALL_PREFIX ${CMAKE_CURRENT_SOURCE_DIR})

include(ExternalProject)
set(BUILD_SHARED_LIBS OFF) # force static libraries

find_package(VTK REQUIRED)
include(${VTK_USE_FILE})

find_package(OpenGL REQUIRED)
find_package(GLUT REQUIRED)

set(genVTK_SOURCES
    preprocessing/generateVTK/genVTK.cpp
    preprocessing/generateVTK/genVTKfromOrg.cpp
    preprocessing/generateVTK/genVTKfromOrg.h)

add_executable(genVTK ${genVTK_SOURCES})
install(TARGETS genVTK RUNTIME DESTINATION bin)

set(Contour_SOURCES
    preprocessing/generatecontour/main.cpp
    preprocessing/generatecontour/svContour.cpp
    preprocessing/generatecontour/svContour.h)

add_executable(Contour ${Contour_SOURCES})
target_link_libraries(Contour ${VTK_LIBRARIES})
install(TARGETS Contour RUNTIME DESTINATION bin)

ExternalProject_Add(ann
    SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/libs/ann_1.1.1
    CONFIGURE_COMMAND ""
    BUILD_COMMAND make linux-g++
    BUILD_IN_SOURCE 1
    INSTALL_COMMAND "")
ExternalProject_Get_Property(ann SOURCE_DIR)
set(ANN_LIBRARIES ${SOURCE_DIR}/lib/libANN.a CACHE STRING "" FORCE)

ExternalProject_Add(glui
    SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/libs/glui-2.35
    CONFIGURE_COMMAND ""
    BUILD_COMMAND cd src && make
    BUILD_IN_SOURCE 1
    INSTALL_COMMAND "")
ExternalProject_Get_Property(glui SOURCE_DIR)
set(GLUI_LIBRARIES ${SOURCE_DIR}/src/lib/libglui.a CACHE STRING "" FORCE)

ExternalProject_Add(jcUtil
    SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/libs/jcUtil
    CONFIGURE_COMMAND ""
    BUILD_COMMAND make
    BUILD_IN_SOURCE 1
    INSTALL_COMMAND "")
ExternalProject_Get_Property(jcUtil SOURCE_DIR)
set(JCUTIL_LIBRARIES ${SOURCE_DIR}/libjcUtil-1.0.a CACHE STRING "" FORCE)
set(JCUTIL_INCLUDE_DIR ${SOURCE_DIR} CACHE STRING "" FORCE)

ExternalProject_Add(LU
    SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/libs/LU
    CONFIGURE_COMMAND ""
    BUILD_COMMAND make
    BUILD_IN_SOURCE 1
    INSTALL_COMMAND "")
ExternalProject_Get_Property(LU SOURCE_DIR)
set(LU_LIBRARIES ${SOURCE_DIR}/libLU.a CACHE STRING "" FORCE)

ExternalProject_Add(kmlocal
    SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/libs/kmlocal-1.7.2
    CONFIGURE_COMMAND ""
    BUILD_COMMAND make
    BUILD_IN_SOURCE 1
    INSTALL_COMMAND ${CMAKE_COMMAND} -E copy <SOURCE_DIR>/bin/kmlsample
        ${CMAKE_CURRENT_BINARY_DIR})

set(svl_SOURCES
    libs/quanVisLib/svUtil.cpp
    libs/quanVisLib/svLut.cpp
    libs/quanVisLib/svParticle.cpp
    libs/quanVisLib/ivview.cpp
    libs/quanVisLib/ivTrackball.cpp
    libs/quanVisLib/svOutline.cpp
    libs/quanVisLib/svDistance.cpp
    libs/quanVisLib/svArrowGlyph.cpp
    libs/quanVisLib/svArrowSelection.cpp
    libs/quanVisLib/svSlice.cpp
    libs/quanVisLib/svQDOTdistancemap.cpp
    libs/quanVisLib/svQDOTmagnitudemap.cpp
    libs/quanVisLib/CIEColor.cpp
    libs/quanVisLib/svColors.cpp
    libs/quanVisLib/svMap.cpp
    libs/quanVisLib/svDirectArrow.cpp
    libs/quanVisLib/svVectorField.cpp
    libs/quanVisLib/svQDOT.cpp
    libs/quanVisLib/svPickingray.cpp
    libs/quanVisLib/svDisc.cpp
    libs/quanVisLib/svAnalyticField.cpp
    libs/quanVisLib/svPrimitive.cpp
    libs/quanVisLib/svGlyph.cpp
    libs/quanVisLib/svSummaryGlyph.cpp
    libs/quanVisLib/svBarGlyph.cpp
    libs/quanVisLib/svBendBar.cpp
    libs/quanVisLib/svSplitVectorsBar.cpp
    libs/quanVisLib/svDirectBar.cpp
    libs/quanVisLib/svUtil.h
    libs/quanVisLib/svLut.h
    libs/quanVisLib/svParticle.h
    libs/quanVisLib/ivview.h
    libs/quanVisLib/ivTrackball.h
    libs/quanVisLib/svOutline.h
    libs/quanVisLib/svDistance.h
    libs/quanVisLib/svArrowGlyph.h
    libs/quanVisLib/svArrowSelection.h
    libs/quanVisLib/svSlice.h
    libs/quanVisLib/svQDOTdistancemap.h
    libs/quanVisLib/svQDOTmagnitudemap.h
    libs/quanVisLib/CIEColor.h
    libs/quanVisLib/svColors.h
    libs/quanVisLib/svMap.h
    libs/quanVisLib/svDirectArrow.h
    libs/quanVisLib/svVectorField.h
    libs/quanVisLib/svQDOT.h
    libs/quanVisLib/svPickingray.h
    libs/quanVisLib/svDisc.h
    libs/quanVisLib/svAnalyticField.h
    libs/quanVisLib/svPrimitive.h
    libs/quanVisLib/svGlyph.h
    libs/quanVisLib/svSummaryGlyph.h
    libs/quanVisLib/svBarGlyph.h
    libs/quanVisLib/svBendBar.h
    libs/quanVisLib/svSplitVectorsBar.h
    libs/quanVisLib/svDirectBar.h)

configure_file(libs/quanVisLib/svConfig.h.in
    ${CMAKE_CURRENT_BINARY_DIR}/svConfig.h)

add_library(svl ${svl_SOURCES} ${CMAKE_CURRENT_BINARY_DIR}/svConfig.h)
target_include_directories(svl PUBLIC ${CMAKE_CURRENT_BINARY_DIR})
set(SVL_INCLUDE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/libs/quanVisLib CACHE STRING "" FORCE)

add_executable(splitToolkit SplitTool/splitToolkit.cpp)
target_link_libraries(splitToolkit svl ${GLUT_LIBRARIES} ${OPENGL_LIBRARIES})
target_include_directories(splitToolkit PRIVATE ${SVL_INCLUDE_DIR}
    ${JCUTIL_INCLUDE_DIR})
install(TARGETS splitToolkit RUNTIME DESTINATION bin)

add_executable(splitToolkitmono SplitTool/splitToolkitmono.cpp)
target_link_libraries(splitToolkitmono svl ${GLUT_LIBRARIES} ${OPENGL_LIBRARIES})
target_include_directories(splitToolkitmono PRIVATE ${SVL_INCLUDE_DIR}
    ${JCUTIL_INCLUDE_DIR})
install(TARGETS splitToolkitmono RUNTIME DESTINATION bin)
