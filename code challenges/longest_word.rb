def longest_word(sen)
  # short and sweet using regular expressions and ruby
  sen = sen.scan(/[A-Za-z]+/)

  sen.max_by{|word| word.length}
end

sen = "I love dogs"

p longest_word(sen)