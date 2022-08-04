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

end

def msort(list)
  return list if list.size < 2

  # sort the left half
  l = msort(list.slice!(0, list.size/2))
  # sort the right half
  r = msort(list)
  # merge the two sides
  merge(l, r)
end


msort([1,5,3,6,8,3,2,8,1,3])
