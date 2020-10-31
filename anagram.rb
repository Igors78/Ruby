def anagram(s)
  if s.length.odd?
    return -1
  end
  s1 = s.split("").take(s.length / 2).sort
  s2 = s.split("").slice(-s.length / 2, s.length - 1).sort
  if s1 == s2
    return 0
  end
  for i in 0...s1.length
    if s2.index(s1[i])
      dif = s2.delete_at(s2.index(s1[i]))
    end
  end
  s2.length
end

s = "fdhlvosfpafhalll"
p anagram(s)
