# Install script for directory: C:/Development/wireshark/epan

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
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Development/wireshark/run/Debug/wireshark.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Development/wireshark/run/Release/wireshark.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Development/wireshark/run/MinSizeRel/wireshark.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Development/wireshark/run/RelWithDebInfo/wireshark.lib")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE SHARED_LIBRARY FILES "C:/Development/wireshark/run/Debug/libwireshark.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE SHARED_LIBRARY FILES "C:/Development/wireshark/run/Release/libwireshark.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE SHARED_LIBRARY FILES "C:/Development/wireshark/run/MinSizeRel/libwireshark.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE SHARED_LIBRARY FILES "C:/Development/wireshark/run/RelWithDebInfo/libwireshark.dll")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Wireshark/epan" TYPE FILE FILES
    "C:/Development/wireshark/epan/addr_and_mask.h"
    "C:/Development/wireshark/epan/addr_resolv.h"
    "C:/Development/wireshark/epan/address.h"
    "C:/Development/wireshark/epan/address_types.h"
    "C:/Development/wireshark/epan/afn.h"
    "C:/Development/wireshark/epan/aftypes.h"
    "C:/Development/wireshark/epan/app_mem_usage.h"
    "C:/Development/wireshark/epan/arcnet_pids.h"
    "C:/Development/wireshark/epan/arptypes.h"
    "C:/Development/wireshark/epan/asn1.h"
    "C:/Development/wireshark/epan/ax25_pids.h"
    "C:/Development/wireshark/epan/bridged_pids.h"
    "C:/Development/wireshark/epan/capture_dissectors.h"
    "C:/Development/wireshark/epan/charsets.h"
    "C:/Development/wireshark/epan/chdlctypes.h"
    "C:/Development/wireshark/epan/color_filters.h"
    "C:/Development/wireshark/epan/column.h"
    "C:/Development/wireshark/epan/column-info.h"
    "C:/Development/wireshark/epan/column-utils.h"
    "C:/Development/wireshark/epan/conversation.h"
    "C:/Development/wireshark/epan/conversation_debug.h"
    "C:/Development/wireshark/epan/conversation_table.h"
    "C:/Development/wireshark/epan/conv_id.h"
    "C:/Development/wireshark/epan/crc10-tvb.h"
    "C:/Development/wireshark/epan/crc16-tvb.h"
    "C:/Development/wireshark/epan/crc32-tvb.h"
    "C:/Development/wireshark/epan/crc6-tvb.h"
    "C:/Development/wireshark/epan/crc8-tvb.h"
    "C:/Development/wireshark/epan/decode_as.h"
    "C:/Development/wireshark/epan/diam_dict.h"
    "C:/Development/wireshark/epan/disabled_protos.h"
    "C:/Development/wireshark/epan/dissector_filters.h"
    "C:/Development/wireshark/epan/dtd.h"
    "C:/Development/wireshark/epan/dtd_parse.h"
    "C:/Development/wireshark/epan/dvb_chartbl.h"
    "C:/Development/wireshark/epan/eap.h"
    "C:/Development/wireshark/epan/eapol_keydes_types.h"
    "C:/Development/wireshark/epan/epan.h"
    "C:/Development/wireshark/epan/epan_dissect.h"
    "C:/Development/wireshark/epan/etypes.h"
    "C:/Development/wireshark/epan/ex-opt.h"
    "C:/Development/wireshark/epan/except.h"
    "C:/Development/wireshark/epan/exceptions.h"
    "C:/Development/wireshark/epan/expert.h"
    "C:/Development/wireshark/epan/export_object.h"
    "C:/Development/wireshark/epan/exported_pdu.h"
    "C:/Development/wireshark/epan/filter_expressions.h"
    "C:/Development/wireshark/epan/follow.h"
    "C:/Development/wireshark/epan/frame_data.h"
    "C:/Development/wireshark/epan/frame_data_sequence.h"
    "C:/Development/wireshark/epan/funnel.h"
    "C:/Development/wireshark/epan/garrayfix.h"
    "C:/Development/wireshark/epan/golay.h"
    "C:/Development/wireshark/epan/guid-utils.h"
    "C:/Development/wireshark/epan/iana_charsets.h"
    "C:/Development/wireshark/epan/iax2_codec_type.h"
    "C:/Development/wireshark/epan/in_cksum.h"
    "C:/Development/wireshark/epan/ip_opts.h"
    "C:/Development/wireshark/epan/ipproto.h"
    "C:/Development/wireshark/epan/ipv4.h"
    "C:/Development/wireshark/epan/ipv6.h"
    "C:/Development/wireshark/epan/lapd_sapi.h"
    "C:/Development/wireshark/epan/llcsaps.h"
    "C:/Development/wireshark/epan/maxmind_db.h"
    "C:/Development/wireshark/epan/media_params.h"
    "C:/Development/wireshark/epan/next_tvb.h"
    "C:/Development/wireshark/epan/nlpid.h"
    "C:/Development/wireshark/epan/oids.h"
    "C:/Development/wireshark/epan/osi-utils.h"
    "C:/Development/wireshark/epan/oui.h"
    "C:/Development/wireshark/epan/packet.h"
    "C:/Development/wireshark/epan/packet_info.h"
    "C:/Development/wireshark/epan/params.h"
    "C:/Development/wireshark/epan/plugin_if.h"
    "C:/Development/wireshark/epan/ppptypes.h"
    "C:/Development/wireshark/epan/print.h"
    "C:/Development/wireshark/epan/print_stream.h"
    "C:/Development/wireshark/epan/prefs.h"
    "C:/Development/wireshark/epan/prefs-int.h"
    "C:/Development/wireshark/epan/proto.h"
    "C:/Development/wireshark/epan/proto_data.h"
    "C:/Development/wireshark/epan/ps.h"
    "C:/Development/wireshark/epan/ptvcursor.h"
    "C:/Development/wireshark/epan/range.h"
    "C:/Development/wireshark/epan/reassemble.h"
    "C:/Development/wireshark/epan/reedsolomon.h"
    "C:/Development/wireshark/epan/register.h"
    "C:/Development/wireshark/epan/req_resp_hdrs.h"
    "C:/Development/wireshark/epan/rtd_table.h"
    "C:/Development/wireshark/epan/rtp_pt.h"
    "C:/Development/wireshark/epan/sctpppids.h"
    "C:/Development/wireshark/epan/secrets.h"
    "C:/Development/wireshark/epan/show_exception.h"
    "C:/Development/wireshark/epan/slow_protocol_subtypes.h"
    "C:/Development/wireshark/epan/sminmpec.h"
    "C:/Development/wireshark/epan/srt_table.h"
    "C:/Development/wireshark/epan/stat_tap_ui.h"
    "C:/Development/wireshark/epan/stat_groups.h"
    "C:/Development/wireshark/epan/stats_tree.h"
    "C:/Development/wireshark/epan/stats_tree_priv.h"
    "C:/Development/wireshark/epan/stream.h"
    "C:/Development/wireshark/epan/strutil.h"
    "C:/Development/wireshark/epan/t35.h"
    "C:/Development/wireshark/epan/tap.h"
    "C:/Development/wireshark/epan/tap-voip.h"
    "C:/Development/wireshark/epan/timestamp.h"
    "C:/Development/wireshark/epan/timestats.h"
    "C:/Development/wireshark/epan/tfs.h"
    "C:/Development/wireshark/epan/time_fmt.h"
    "C:/Development/wireshark/epan/to_str.h"
    "C:/Development/wireshark/epan/tvbparse.h"
    "C:/Development/wireshark/epan/tvbuff.h"
    "C:/Development/wireshark/epan/tvbuff-int.h"
    "C:/Development/wireshark/epan/uat.h"
    "C:/Development/wireshark/epan/uat-int.h"
    "C:/Development/wireshark/epan/unit_strings.h"
    "C:/Development/wireshark/epan/value_string.h"
    "C:/Development/wireshark/epan/x264_prt_id.h"
    "C:/Development/wireshark/epan/xdlc.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/Development/wireshark/epan/crypt/cmake_install.cmake")
  include("C:/Development/wireshark/epan/dfilter/cmake_install.cmake")
  include("C:/Development/wireshark/epan/dissectors/cmake_install.cmake")
  include("C:/Development/wireshark/epan/ftypes/cmake_install.cmake")
  include("C:/Development/wireshark/epan/wmem/cmake_install.cmake")
  include("C:/Development/wireshark/epan/wslua/cmake_install.cmake")

endif()

