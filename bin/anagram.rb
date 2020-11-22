#!/usr/bin/env ruby
# frozen_string_literal: true

class Anagram
  def initialize(str)
    @str = str
  end

  def possible_anagram
    return -1 if @str.length.odd?
  end

  def already_anagram
    @str1 = @str.split('').take(@str.length / 2).sort
    @str2 = @str.split('').slice(-@str.length / 2, @str.length - 1).sort
    return 0 if @str1 == @str2
  end

  def check_for_anagram
    (0...@str1.length).each do |i|
      @str2.delete_at(@str2.index(@str1[i])) if @str2.index(@str1[i])
    end
    @str2.length
  end

  def make_check_anagram
    possible_anagram
    already_anagram
    check_for_anagram
  end
end

string = 'fdhlvosfpafhalll'
p Anagram.new(string).make_check_anagram
