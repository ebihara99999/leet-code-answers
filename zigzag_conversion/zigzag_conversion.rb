# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
  return s if num_rows == 1
  row_cnt = 0
  rows = Array.new(num_rows) { [] }

  ans = ''
  down = true

  s.each_char do |str|
    if row_cnt.zero?
      down = true
    elsif row_cnt == (num_rows - 1)
      down = false
    end

    rows[row_cnt] << str
    down ? row_cnt += 1 : row_cnt -= 1
  end
  rows.flatten.join
end
