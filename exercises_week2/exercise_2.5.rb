string = "   Hello,      world!    "

strip = string.strip
puts strip               #"Hello,      world!" output

subbed = strip.sub("world", "Anthony")
puts subbed

split = subbed.split("")
puts split

concat = subbed.concat("How are you?!")
puts concat

upcase = concat.upcase
puts upcase