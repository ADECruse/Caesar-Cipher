def caesar_cipher(string, number)
  encrypt_this = string.split(//)
  encrypt_this.map! do |i|
    if /[a-z]/ =~ i # First I use a regexp to search for lowercase letters
      i = i.ord # Then I convert the letter to its ACSII number
      i += number # Now I shift the ACSII number n places
      if i > 122  # This loops letters shifted further than the alphabet
        i -= 26
      end
    elsif /[A-Z]/ =~ i
      i = i.ord
      i += number
      if i > 90
        i -= 26
      end
    end
    i.chr # Finally I convert the number back into its relevant ACSII letter
  end
  puts encrypt_this.join
end
