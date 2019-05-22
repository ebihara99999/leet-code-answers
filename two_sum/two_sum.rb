# frozen_string_literal: true

def two_sum(nums, target)
  table = (0..nums.count - 1).zip(nums).to_h
  answers = []
  (0..nums.count - 1).each do |i|
    right = target - table[i]
    table.delete(i)
    candidates = table.select { |_k, v| v == right }
    next if candidates.empty?

    right_index = candidates.invert.invert.keys.first # want the last pair if there are the same values
    answers = [i, right_index]
    break
  end
  answers.sort
end
