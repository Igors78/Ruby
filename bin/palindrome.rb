# frozen_string_literal: true

def palindrome_index(str)
  return -1 if str.split('').reverse == str.split('')

  array = str.split('')
  (0...(array.length / 2)).each do |i|
    last = array.length - 1 - i
    if array[i] != array[last]
      if array.slice(0, i) + array.slice(i + 1, array.length - 1) == (array.slice(0, i) + array.slice(i + 1, array.length - 1)).reverse
        return i
      elsif array.slice(0, last) + array.slice((last + 1), array.length - 1) == (array.slice(0, last) + array.slice((last + 1), array.length - 1)).reverse
        return last
      else
        return -1
      end
    end
  end
end

str = 'aaaaacccaaabaa'
p palindrome_index(str)
