def leap_year?(year)
  if  year%100 == 0 && year%400 == 0
    return true
  elsif year%100 == 0 && year%400 != 0
    return false
  elsif (year - 1996)%4 == 0
    return true
  else
    return false
  end
end

#Did not know that about centurial years
