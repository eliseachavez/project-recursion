def fibs_it(num)
  ary = [0, 1]
  i = 2
  until i == num
    ary.push(ary[-1] + ary[-2])
    i += 1
  end
  ary
end

def fibs_r(num, ary)
  return ary if ary.size == num

  fibs_r(num, ary.push(ary[-1] + ary[-2]))
end

seq1 = fibs_it(8)
pp seq1
seq2 = fibs_r(8, [0, 1])
pp seq2
