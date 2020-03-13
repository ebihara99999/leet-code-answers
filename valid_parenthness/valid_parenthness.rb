# @param {String} s
# @return {Boolean}
def is_valid(str)
  return false if s.length.odd?
  stack = []
  open_brackets = ['(', '{' ,'[']
  closing_brackets = [']', '}', ')']
  pares = {
      '(': ')',
      '{': '}',
      '[': '}'
  }

  pares = {
      ')': '(',
      '}': '{',
      ']': '['
  }
  s.each_char do |s|
    stack << s if open_brackets.include?(s)
    return false if closing_brackets.include?(s) && stack.pop != pares[:"#{s}"]
  end
  return false unless stack.size.zero?
  true
end
