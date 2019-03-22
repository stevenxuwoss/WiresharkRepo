# Install script for directory: C:/Development/wireshark/doc

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man1" TYPE FILE FILES
    "C:/Development/wireshark/doc/androiddump.1"
    "C:/Development/wireshark/doc/capinfos.1"
    "C:/Development/wireshark/doc/captype.1"
    "C:/Development/wireshark/doc/ciscodump.1"
    "C:/Development/wireshark/doc/ciscodump.1"
    "C:/Development/wireshark/doc/dftest.1"
    "C:/Development/wireshark/doc/dumpcap.1"
    "C:/Development/wireshark/doc/editcap.1"
    "C:/Development/wireshark/doc/mergecap.1"
    "C:/Development/wireshark/doc/randpkt.1"
    "C:/Development/wireshark/doc/randpktdump.1"
    "C:/Development/wireshark/doc/rawshark.1"
    "C:/Development/wireshark/doc/reordercap.1"
    "C:/Development/wireshark/doc/sshdump.1"
    "C:/Development/wireshark/doc/text2pcap.1"
    "C:/Development/wireshark/doc/tshark.1"
    "C:/Development/wireshark/doc/udpdump.1"
    "C:/Development/wireshark/doc/wireshark.1"
    "C:/Development/wireshark/doc/mmdbresolve.1"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man4" TYPE FILE FILES
    "C:/Development/wireshark/doc/extcap.4"
    "C:/Development/wireshark/doc/wireshark-filter.4"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE FILES
    "C:/Development/wireshark/doc/androiddump.html"
    "C:/Development/wireshark/doc/capinfos.html"
    "C:/Development/wireshark/doc/captype.html"
    "C:/Development/wireshark/doc/ciscodump.html"
    "C:/Development/wireshark/doc/ciscodump.html"
    "C:/Development/wireshark/doc/dftest.html"
    "C:/Development/wireshark/doc/dumpcap.html"
    "C:/Development/wireshark/doc/editcap.html"
    "C:/Development/wireshark/doc/extcap.html"
    "C:/Development/wireshark/doc/mergecap.html"
    "C:/Development/wireshark/doc/randpkt.html"
    "C:/Development/wireshark/doc/randpktdump.html"
    "C:/Development/wireshark/doc/rawshark.html"
    "C:/Development/wireshark/doc/reordercap.html"
    "C:/Development/wireshark/doc/sshdump.html"
    "C:/Development/wireshark/doc/text2pcap.html"
    "C:/Development/wireshark/doc/tshark.html"
    "C:/Development/wireshark/doc/udpdump.html"
    "C:/Development/wireshark/doc/wireshark-filter.html"
    "C:/Development/wireshark/doc/wireshark.html"
    "C:/Development/wireshark/doc/mmdbresolve.html"
    )
endif()

