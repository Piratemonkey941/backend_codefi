puts "hello world"
1+1 #=> 2 

2 - 1 #=> 1

2 * 2 #=> 4

10/5 #=> 2

8 % 2 #=> 0

10 % 4 #=> 2 

int to float
13.to_f  #=> 13.0

float to int
13.0.to_i  #=> 13
13.9.to_i  #=> 13


6.even? #=> true
7.even? #=> false

6.odd? #=> false
7.odd? #=> true

##STRINGS 

"Welcome" + "to" + "Odin" #=> Welcome to Odin

"Welcome" << "to" << "Odin" #=> Welcome to Odin

*Welcome *.concat(*to*).concat(*Odin!*) #=> Welcome to Odin

"hello"[0]  #=> "h"

"hello"[0..2]  #=> "hel"

"hello"[0,4]  #=> "hell"

"hello"[-1]  #=> "o"

"hello"[]

# Interpolation

name = "Odin"

puts "Hello, #{name}"  #=> "Hello, Odin"
puts 'Hello, #{name}'  #=> 'Hello, #{name}'

5.to_s #=> "5" string of 5

nil.to_s #=> "" 

##Symbols

:symbol.to_s #=> "symbol"

"string" == "string" #=> true

"string".object_id == "string".object_id #=> false
:symbol.object_id == :symbol.object_id #=> true

# Variables

age = 18 # 18

age = age + 4 # 22
age += 4 # 22 same as above but short hand

age -= 4 # 14

age *= 2 # 36

age /= 2 # 9

my_location = "Missouri"

johns_location = my_location #"Missouri"

# Input / Output

