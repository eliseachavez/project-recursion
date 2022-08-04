def msort(list)
  if list.size < 2
    return
  else
    # sort the left half
    l = msort(list.slice!(0,list.size/2))
    # sort the right half
    r = msort(list)
    # merge the two sides
    merge(l, r)
  end
end

msort([1,5,3,6,8,3,2,8,1,3])
