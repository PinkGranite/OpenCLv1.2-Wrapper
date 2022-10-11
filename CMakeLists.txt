cmake_minimum_required( VERSION 2.8 )
project( SIMULATORv1.0 )

set ( CMAKE_CXX_STANDARD 11 )

add_executable( simulator )
aux_source_directory( . sources )
aux_source_directory( ./utils sources )
message( ${sources} )
target_sources( simulator PUBLIC ${sources} )
target_link_libraries( simulator OpenCL )