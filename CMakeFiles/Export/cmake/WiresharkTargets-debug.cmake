#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "zlib" for configuration "Debug"
set_property(TARGET zlib APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(zlib PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/./zlibd.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/./zlibd1.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS zlib )
list(APPEND _IMPORT_CHECK_FILES_FOR_zlib "${_IMPORT_PREFIX}/./zlibd.lib" "${_IMPORT_PREFIX}/./zlibd1.dll" )

# Import target "epan" for configuration "Debug"
set_property(TARGET epan APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(epan PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/./wireshark.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "zlib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/./libwireshark.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS epan )
list(APPEND _IMPORT_CHECK_FILES_FOR_epan "${_IMPORT_PREFIX}/./wireshark.lib" "${_IMPORT_PREFIX}/./libwireshark.dll" )

# Import target "wiretap" for configuration "Debug"
set_property(TARGET wiretap APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(wiretap PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/./wiretap.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "zlib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/./libwiretap.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS wiretap )
list(APPEND _IMPORT_CHECK_FILES_FOR_wiretap "${_IMPORT_PREFIX}/./wiretap.lib" "${_IMPORT_PREFIX}/./libwiretap.dll" )

# Import target "wsutil" for configuration "Debug"
set_property(TARGET wsutil APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(wsutil PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/./wsutil.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/./libwsutil.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS wsutil )
list(APPEND _IMPORT_CHECK_FILES_FOR_wsutil "${_IMPORT_PREFIX}/./wsutil.lib" "${_IMPORT_PREFIX}/./libwsutil.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
