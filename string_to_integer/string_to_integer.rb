# @param {String} str
# @return {Integer}
def my_atoi(str)
  valid_characters = ['-', '+', '1', '2', '3', '4', '5', '6', '7', '8' ,'9', '0']
  str.lstrip!
  return 0 unless valid_characters.include? str[0]
end
