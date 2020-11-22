#!/usr/bin/env ruby
# frozen_string_literal: true

str = 'vallaver'
abort '-1' if str.length.odd?

str1 = str.split('').take(str.length / 2).sort
str2 = str.split('').slice(-str.length / 2, str.length - 1).sort
abort '0' if str1 == str2

(0...str1.length).each do |i|
  str2.delete_at(str2.index(str1[i])) if str2.index(str1[i])
end
puts str2.length
