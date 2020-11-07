#!/usr/bin/env ruby
# frozen_string_literal: true

def anagram(str)
  return -1 if str.length.odd?

  str1 = str.split('').take(str.length / 2).sort
  str2 = str.split('').slice(-str.length / 2, str.length - 1).sort
  return 0 if str1 == str2

  (0...str1.length).each do |i|
    str2.delete_at(str2.index(str1[i])) if str2.index(str1[i])
  end
  str2.length
end

str = 'fdhlvosfpafhalll'
p anagram(str)
