cmake_minimum_required(VERSION 2.8)

project (MyTestProject)

SET (LIBRARY_OUTPUT_PATH
 ${PROJECT_BINARY_DIR}/lib
 CACHE PATH
 "Directory for all Libraries"
 )
 
SET (CMAKE_RUNTIME_OUTPUT_DIRECTORY
 ${PROJECT_BINARY_DIR}/bin
 CACHE PATH
 "Directory for all Binaries"
 )
 
include_directories("${CMAKE_BINARY_DIR}/include")
 
ADD_EXECUTABLE(MyTestProject	
		${CMAKE_CURRENT_SOURCE_DIR}/src/main.cpp
		${CMAKE_CURRENT_SOURCE_DIR}/src/somefile.cpp)


install (	FILES "${CMAKE_BINARY_DIR}/MyTestProject"
			DESTINATION bin
			PERMISSIONS OWNER_EXECUTE OWNER_WRITE OWNER_READ GROUP_EXECUTE GROUP_READ WORLD_EXECUTE WORLD_READ)
