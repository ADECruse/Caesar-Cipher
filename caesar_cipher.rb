#def caesar_cipher(string, integer)
#  word = string.split("")
#  integer.times do |i|
#    word[i].next
#  end
#end



word = "What a string!".split(//)

 word.map! do |i|

   i = i.ord
   i = i +=7
   i = i.chr

 end
p word.join
