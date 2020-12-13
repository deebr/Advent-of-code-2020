#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
#  Elliot.py
#  
#  Copyright 2020  <pi@raspberrypi>
#  
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#  
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#  
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#  
#  

with open('numbers') as f:
    numbers = f.read().splitlines()

for index, number in enumerate(numbers):
    numbers[index] = int(number)

for index1, number1 in enumerate(numbers):
    for index2, number2 in enumerate(numbers[index1:]):  
        for index3, number3 in enumerate(numbers[index2:]):      
            if number1 + number2 + number3 == 2020:
                print(f"{number1} + {number2} + {number3} = {number1 + number2 + number3}. {number1} * {number2} * {number3} = {number1*number2*number3}")
