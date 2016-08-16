
days_of_the_week = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']
last_day = days_of_the_week.pop
days_of_the_week.insert(0, last_day)
puts days_of_the_week

i = 0
j = 0
weekend_days = []
weekday_days = []
new_days_of_the_week = []

for day in days_of_the_week
  if day == ('Saturday' || 'Sunday')
#    weekend_days[i] = day
#    i += 1
    weekend_days.push(day)
  else
#    weekday_days[j] = day
#    j += 1
    weekday_days.push(day)
  end
end

new_days_of_the_week[0] = weekend_days
new_days_of_the_week[1] = weekday_days

print new_days_of_the_week[0]
print new_days_of_the_week[1]
