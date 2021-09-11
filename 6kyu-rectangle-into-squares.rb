def sqInRect(lng, wdth)
    if lng == wdth
      nil
    else
      arr = []
      until lng == 0 || wdth == 0
      max = lng > wdth ? lng : wdth
      min = lng < wdth ? lng : wdth
      arr << min
      lng = (max - min)
      wdth = min
      end
    end
  arr
end