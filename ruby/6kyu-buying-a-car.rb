#Let us begin with an example:
#A man has a rather old car being worth $2000. He saw a secondhand car being worth $8000. He wants to keep his old car until he can buy the secondhand one.
#He thinks he can save $1000 each month but the prices of his old car and of the new one decrease of 1.5 percent per month. Furthermore this percent of loss increases of 0.5 percent at the end of every two months. Our man finds it difficult to make all these calculations.
#Can you help him?
#How many months will it take him to save up enough money to buy the car he wants, and how much money will he have left over?

#Parameters and return of function:
#parameter (positive int or float, guaranteed) startPriceOld (Old car price)
#parameter (positive int or float, guaranteed) startPriceNew (New car price)
#parameter (positive int or float, guaranteed) savingperMonth 
#parameter (positive float or int, guaranteed) percentLossByMonth

#nbMonths(2000, 8000, 1000, 1.5) should return [6, 766] or (6, 766)

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