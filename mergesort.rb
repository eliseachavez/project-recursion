def merge(l, r)
  sorted = []
  until l.size.zero? || r.size.zero?
    if l[0] < r[0]
      sorted.push(l[0])
      l.shift
    else
      sorted.push(r[0])
      r.shift
    end
  end
  sorted.push(l) unless l.size.zero?
  sorted.push(r) unless r.size.zero?

  sorted.flatten
end

def msort(list)
  return list if list.size < 2

  l = msort(list.slice!(0, list.size/2))
  r = msort(list)
  merge(l, r)
end

unsorted = [1,5,3,6,8,3,2,8,1,3]
p 'Before sorting:'
pp unsorted
puts 'After sorting:'
sorted = msort(unsorted)
pp sorted
