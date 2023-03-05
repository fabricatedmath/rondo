project(rondoRun)

add_executable(${PROJECT_NAME} main.cu)

target_compile_options(${PROJECT_NAME} PRIVATE $<$<COMPILE_LANGUAGE:CUDA>:--ptxas-options=-v>) 

set_property(TARGET ${PROJECT_NAME} PROPERTY CUDA_ARCHITECTURES 89)

target_link_libraries( ${PROJECT_NAME}
    rondo
    )
