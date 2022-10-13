cmake_minimum_required(VERSION 3.0.0)
project(Clock VERSION 0.1.0)
set (CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include(CTest)
enable_testing()

file(GLOB src_files CONFIGURE_DEPENDS
     "Xcurse/src/*.cpp"
     "Xcurse/src/Common/*.cpp"
     "Xcurse/src/Display/*.cpp"
     "Xcurse/src/Utils/*.cpp"
     "Xcurse/src/Widgets/*.cpp"
     "Xcurse/src/Window/*.cpp"
     "Xcurse/src/Shapes/*.cpp"
     "src/*.cpp"
)

add_executable(Clock clock.cpp ${src_files})

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
