def predict_age(age_1, age_2, age_3, age_4, age_5, age_6, age_7, age_8)
  ages = [age_1, age_2, age_3, age_4, age_5, age_6, age_7, age_8].map! { |age| age.to_f * age }
  square_root = Math.sqrt(ages.inject(:+))
  (square_root / 2).floor
end