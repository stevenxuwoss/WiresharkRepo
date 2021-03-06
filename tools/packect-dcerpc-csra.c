
C:\Development\wireshark\tools>#!/bin/sh

C:\Development\wireshark\tools>#

C:\Development\wireshark\tools>#  File : idl2wrs 

C:\Development\wireshark\tools>#

C:\Development\wireshark\tools>#  Author : Frank Singleton (frank.singleton@ericsson.com) 

C:\Development\wireshark\tools>#

C:\Development\wireshark\tools>#  Copyright (C) 2001 Frank Singleton, Ericsson Inc. 

C:\Development\wireshark\tools>#

C:\Development\wireshark\tools>#  This file is a simple shell script wrapper for the IDL to  

C:\Development\wireshark\tools>#  Wireshark dissector code. 

C:\Development\wireshark\tools>#

C:\Development\wireshark\tools>#  ie: wireshark_be.py and wireshark_gen.py 

C:\Development\wireshark\tools>#

C:\Development\wireshark\tools>#  This file is used to generate "Wireshark" dissectors from IDL descriptions.  

C:\Development\wireshark\tools>#  The output language generated is "C". It will generate code to use the  

C:\Development\wireshark\tools>#  GIOP/IIOP get_CDR_XXX API. 

C:\Development\wireshark\tools>#

C:\Development\wireshark\tools>#  Please see packet-giop.h in Wireshark distro for API description. 

C:\Development\wireshark\tools>#  Wireshark is available at http://www.wireshark.org/ 

C:\Development\wireshark\tools>#

C:\Development\wireshark\tools>#  Omniidl is part of the OmniOrb distribution, and is available at 

C:\Development\wireshark\tools>#  http://omniorb.sourceforge.net/ 

C:\Development\wireshark\tools>#

C:\Development\wireshark\tools>#  This program is free software; you can redistribute it and/or modify it 

C:\Development\wireshark\tools>#  under the terms of the GNU General Public License as published by 

C:\Development\wireshark\tools>#  the Free Software Foundation; either version 2 of the License, or 

C:\Development\wireshark\tools>#  (at your option) any later version. 

C:\Development\wireshark\tools>#

C:\Development\wireshark\tools>#  This program is distributed in the hope that it will be useful, 

C:\Development\wireshark\tools>#  but WITHOUT ANY WARRANTY; without even the implied warranty of 

C:\Development\wireshark\tools>#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU 

C:\Development\wireshark\tools>#  General Public License for more details. 

C:\Development\wireshark\tools>#

C:\Development\wireshark\tools>#  You should have received a copy of the GNU General Public License 

C:\Development\wireshark\tools>#  along with this program; if not, write to the Free Software 

C:\Development\wireshark\tools>#  Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 

C:\Development\wireshark\tools>#  02111-1307, USA. 

C:\Development\wireshark\tools>#

C:\Development\wireshark\tools>#  Must at least supply an IDL file 
C:\Development\wireshark\tools>if [ $# -lt 1 ]; then
