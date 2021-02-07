cmake_minimum_required(VERSION 3.15)
project(PyramidsAnimation)

set(CMAKE_CXX_STANDARD 14)

add_compile_definitions(PROJECT_NAME="${PROJECT_NAME}" PROJECT_DIR="${CMAKE_CURRENT_SOURCE_DIR}")

add_executable(${PROJECT_NAME}
        main.cpp
        app.cpp
        $<TARGET_OBJECTS:glad>
        Pyramid.h Pyramid.cpp camera.h CameraControler.h rotation.h)

target_link_libraries(${PROJECT_NAME} PUBLIC )
target_include_directories(${PROJECT_NAME} PRIVATE ${CMAKE_SOURCE_DIR}/src)

