# Common CMake args to send to all external projects
set( VIAME_ARGS_COMMON_CMAKE
  # CMAKE options
  -DCMAKE_BUILD_TYPE:STRING=${CMAKE_BUILD_TYPE}
   \"-DCMAKE_CONFIGURATION_TYPES:STRING=${CMAKE_CONFIGURATION_TYPES}\"
  -DCMAKE_INSTALL_PREFIX:PATH=${VIAME_BUILD_INSTALL_PREFIX}
  -DBUILD_SHARED_LIBS:BOOL=${VIAME_BUILD_SHARED}
  -DCMAKE_FIND_ROOT_PATH:PATH=${CMAKE_FIND_ROOT_PATH}
  -DCMAKE_LIBRARY_PATH:PATH=${CMAKE_LIBRARY_PATH}
)

set( VIAME_ARGS_COMMON_COMPILER
  # Compiler options
  -DCMAKE_CXX_COMPILER_ARG1:STRING=${CMAKE_CXX_COMPILER_ARG1}
  -DCMAKE_C_COMPILER_ARG1:STRING=${CMAKE_C_COMPILER_ARG1}
  -DCMAKE_CXX_COMPILER:FILEPATH=${CMAKE_CXX_COMPILER}
  -DCMAKE_C_COMPILER:FILEPATH=${CMAKE_C_COMPILER}
  -DCMAKE_CXX_FLAGS:STRING=${CMAKE_CXX_FLAGS}
  -DCMAKE_CXX_FLAGS_DEBUG:STRING=${CMAKE_CXX_FLAGS_DEBUG}
  -DCMAKE_CXX_FLAGS_MINSIZEREL:STRING=${CMAKE_CXX_FLAGS_MINSIZEREL}
  -DCMAKE_CXX_FLAGS_RELEASE:STRING=${CMAKE_CXX_FLAGS_RELEASE}
  -DCMAKE_CXX_FLAGS_RELWITHDEBINFO:STRING=${CMAKE_CXX_FLAGS_RELWITHDEBINFO}
  -DCMAKE_C_FLAGS:STRING=${CMAKE_C_FLAGS}
  -DCMAKE_C_FLAGS_DEBUG:STRING=${CMAKE_C_FLAGS_DEBUG}
  -DCMAKE_C_FLAGS_MINSIZEREL:STRING=${CMAKE_C_FLAGS_MINSIZEREL}
  -DCMAKE_C_FLAGS_RELEASE:STRING=${CMAKE_C_FLAGS_RELEASE}
  -DCMAKE_C_FLAGS_RELWITHDEBINFO:STRING=${CMAKE_C_FLAGS_RELWITHDEBINFO}
)

set( VIAME_ARGS_COMMON_LINKER
  # Linker options
  "-DCMAKE_EXE_LINKER_FLAGS:STRING=${VIAME_LINKER_FLAGS} ${CMAKE_EXE_LINKER_FLAGS}"
  "-DCMAKE_MODULE_LINKER_FLAGS:STRING=${VIAME_LINKER_FLAGS} ${CMAKE_MODULE_LINKER_FLAGS}"
  "-DCMAKE_SHARED_LINKER_FLAGS:STRING=${VIAME_LINKER_FLAGS} ${CMAKE_SHARED_LINKER_FLAGS}"
)

set( VIAME_ARGS_COMMON ${VIAME_ARGS_COMMON_CMAKE}
                       ${VIAME_ARGS_COMMON_COMPILER}
                       ${VIAME_ARGS_COMMON_LINKER}
)
