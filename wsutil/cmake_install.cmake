# Install script for directory: C:/Development/wireshark/wsutil

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/Wireshark")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Development/wireshark/run/Debug/wsutil.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Development/wireshark/run/Release/wsutil.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Development/wireshark/run/MinSizeRel/wsutil.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Development/wireshark/run/RelWithDebInfo/wsutil.lib")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE SHARED_LIBRARY FILES "C:/Development/wireshark/run/Debug/libwsutil.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE SHARED_LIBRARY FILES "C:/Development/wireshark/run/Release/libwsutil.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE SHARED_LIBRARY FILES "C:/Development/wireshark/run/MinSizeRel/libwsutil.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE SHARED_LIBRARY FILES "C:/Development/wireshark/run/RelWithDebInfo/libwsutil.dll")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Wireshark/wsutil" TYPE FILE FILES
    "C:/Development/wireshark/wsutil/adler32.h"
    "C:/Development/wireshark/wsutil/base32.h"
    "C:/Development/wireshark/wsutil/bits_count_ones.h"
    "C:/Development/wireshark/wsutil/bits_ctz.h"
    "C:/Development/wireshark/wsutil/bitswap.h"
    "C:/Development/wireshark/wsutil/buffer.h"
    "C:/Development/wireshark/wsutil/color.h"
    "C:/Development/wireshark/wsutil/copyright_info.h"
    "C:/Development/wireshark/wsutil/cpu_info.h"
    "C:/Development/wireshark/wsutil/crash_info.h"
    "C:/Development/wireshark/wsutil/crc6.h"
    "C:/Development/wireshark/wsutil/crc7.h"
    "C:/Development/wireshark/wsutil/crc8.h"
    "C:/Development/wireshark/wsutil/crc10.h"
    "C:/Development/wireshark/wsutil/crc11.h"
    "C:/Development/wireshark/wsutil/crc16.h"
    "C:/Development/wireshark/wsutil/crc16-plain.h"
    "C:/Development/wireshark/wsutil/crc32.h"
    "C:/Development/wireshark/wsutil/curve25519.h"
    "C:/Development/wireshark/wsutil/eax.h"
    "C:/Development/wireshark/wsutil/filesystem.h"
    "C:/Development/wireshark/wsutil/frequency-utils.h"
    "C:/Development/wireshark/wsutil/g711.h"
    "C:/Development/wireshark/wsutil/inet_addr.h"
    "C:/Development/wireshark/wsutil/inet_ipv4.h"
    "C:/Development/wireshark/wsutil/inet_ipv6.h"
    "C:/Development/wireshark/wsutil/interface.h"
    "C:/Development/wireshark/wsutil/jsmn.h"
    "C:/Development/wireshark/wsutil/json_dumper.h"
    "C:/Development/wireshark/wsutil/mpeg-audio.h"
    "C:/Development/wireshark/wsutil/netlink.h"
    "C:/Development/wireshark/wsutil/nstime.h"
    "C:/Development/wireshark/wsutil/os_version_info.h"
    "C:/Development/wireshark/wsutil/pint.h"
    "C:/Development/wireshark/wsutil/plugins.h"
    "C:/Development/wireshark/wsutil/pow2.h"
    "C:/Development/wireshark/wsutil/privileges.h"
    "C:/Development/wireshark/wsutil/processes.h"
    "C:/Development/wireshark/wsutil/report_message.h"
    "C:/Development/wireshark/wsutil/sign_ext.h"
    "C:/Development/wireshark/wsutil/sober128.h"
    "C:/Development/wireshark/wsutil/socket.h"
    "C:/Development/wireshark/wsutil/str_util.h"
    "C:/Development/wireshark/wsutil/strnatcmp.h"
    "C:/Development/wireshark/wsutil/strtoi.h"
    "C:/Development/wireshark/wsutil/tempfile.h"
    "C:/Development/wireshark/wsutil/time_util.h"
    "C:/Development/wireshark/wsutil/type_util.h"
    "C:/Development/wireshark/wsutil/unicode-utils.h"
    "C:/Development/wireshark/wsutil/utf8_entities.h"
    "C:/Development/wireshark/wsutil/ws_cpuid.h"
    "C:/Development/wireshark/wsutil/ws_mempbrk.h"
    "C:/Development/wireshark/wsutil/ws_mempbrk_int.h"
    "C:/Development/wireshark/wsutil/ws_pipe.h"
    "C:/Development/wireshark/wsutil/ws_printf.h"
    "C:/Development/wireshark/wsutil/wsjson.h"
    "C:/Development/wireshark/wsutil/xtea.h"
    )
endif()

