def palindromeIndex(s)
  if s.split("").reverse == s.split("")
    return -1
  end
  array = s.split("")
  for i in 0...(array.length / 2)
    last = (array.length) - 1 - i
    p last
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

s = "aaaaacccaaabaa"
p palindromeIndex (s)
