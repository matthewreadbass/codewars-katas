def nbMonths(startPriceOld, startPriceNew, savingperMonth, percentLossByMonth)
    i, money = 1, 0
    until money.round + startPriceOld.round >= startPriceNew.round
      money += savingperMonth
      i += 1
      startPriceOld = (startPriceOld * (1 - (percentLossByMonth.to_f / 100)))
      startPriceNew = (startPriceNew * (1 - (percentLossByMonth.to_f / 100)))
      percentLossByMonth += 0.5 if i % 2 == 0
    end
    [i-1, ((money + startPriceOld) - (startPriceNew)).round]
  end