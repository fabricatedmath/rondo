cmake_minimum_required(VERSION 3.25)

project(rondo LANGUAGES CXX CUDA)

find_package(CUDA)

set(CMAKE_CXX_STANDARD 17)

file(GLOB cuda_source_files 
    "${rondo_SOURCE_DIR}/src/*.cu"
    )

include_directories(
    ${rondo_SOURCE_DIR}/src
    )

add_library(${PROJECT_NAME} STATIC ${cpp_source_files} ${cuda_source_files})

set_property(TARGET ${PROJECT_NAME} PROPERTY CUDA_ARCHITECTURES 89)

add_subdirectory(app)