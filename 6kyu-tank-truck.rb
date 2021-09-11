def tankvol(h, d, vt)
    r = d.to_f/2
    adj = r - h
    circle_area = Math::PI * (r**2)
    length = vt.to_f / circle_area
    if
      adj == 0
      ((circle_area / 2) * length).floor()
    elsif
      adj > 0
      x = adj.to_f/r
      angle = ((Math.acos(x)) * (180/Math::PI)) * 2
      opp_sq = r**2 - adj**2
      h_area = ((angle/360) * circle_area) - (Math.sqrt(opp_sq) * adj)
      h_vol = (h_area * length).floor()
    else
      inv_adj = r - (d - h)
      x = inv_adj.to_f/r
      angle = ((Math.acos(x)) * (180/Math::PI)) * 2
      sector_area = (angle/360) * circle_area
      tri_area = ((Math.sqrt(r**2 - inv_adj**2)) * inv_adj)
      h_area = circle_area - (sector_area - tri_area)
      h_vol = (h_area * length).floor()
    end
  end