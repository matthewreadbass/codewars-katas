#To introduce the problem think to my neighbor who drives a tanker truck. The level indicator is down and he is worried because he does not know if he will be able to make deliveries. We put the truck on a horizontal ground and measured the height of the liquid in the tank.
#Fortunately the tank is a perfect cylinder and the vertical walls on each end are flat. The height of the remaining liquid is h, the diameter of the cylinder is d, the total volume is vt (h, d, vt are positive or null integers). You can assume that h <= d.
#Could you calculate the remaining volume of the liquid? Your function tankvol(h, d, vt) returns an integer which is the truncated result (e.g floor) of your float calculation.

#Examples:
#tankvol(40,120,3500) should return 1021 (calculation gives about: 1021.26992027)
#tankvol(60,120,3500) should return 1750
#tankvol(80,120,3500) should return 2478 (calculation gives about: 2478.73007973)

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