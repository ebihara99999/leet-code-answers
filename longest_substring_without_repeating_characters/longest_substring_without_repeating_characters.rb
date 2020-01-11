def length_of_longest_substring(str)
  return 0 if str.empty?
  longest_substring = ''
  substring = ''
  str.each_char do |s|
    if substring.include?(s)
      longest_substring = substring.dup if longest_substring.length < substring.length
      removal_position = substring.index(s)
      substring.slice!(0..removal_position)
      substring << s
    else
      substring << s
      longest_substring = substring.dup if longest_substring.length < substring.length
    end
  end
  longest_substring.length
end
