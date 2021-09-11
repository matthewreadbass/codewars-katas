def race(v1, v2, g)
    if v1 >= v2
      nil
    else
      hours = 0
      dif = v2 - v1
      time = 60 * ( g.to_f / dif.to_f )
      until time < 60
        time = time - 60
        hours += 1
      end
      mins = time.floor()
      secs = (time - mins) * 60
      return [hours, mins, secs.floor]
    end
  end