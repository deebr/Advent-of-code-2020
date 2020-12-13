{
   david.pas
   
   Copyright 2020  <pi@raspberrypi>
   
   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
   MA 02110-1301, USA.
   
   
}


program untitled;

uses crt;
var i : string;
    j : integer;

BEGIN
	i:='David';
   writeln (i);
   for j:=1 to 5 do
     writeln (i[j]);
   i[2]:='d';
   writeln (i);
	
END.

