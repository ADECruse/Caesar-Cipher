def caesar_cipher(string, number)
  encrypt_this = string.split(//)
  encrypt_this.map! do |i|
    if /[a-z]/.match(i)
      i = i.ord
      i = i +=number
      if i > 122
        i = i - 26
      end
    elsif /[A-Z]/.match(i)
      i = i.ord
      i = i +=number
      if i > 90
        i = i - 26
      end
    end
    i = i.chr
  end
  puts encrypt_this.join
end
