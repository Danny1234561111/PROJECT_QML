# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\appuntitled15_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appuntitled15_autogen.dir\\ParseCache.txt"
  "appuntitled15_autogen"
  )
endif()
