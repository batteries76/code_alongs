
#- This should be done in a new file called air_conditioning.rb
#- Ask the user what the current temperature is, if the A/C is functional, and what temperature they wish it was.
#- If the airconditioner is functional and the current temperature is above the the desired temperature... display "Turn on the A/C Please"
# If the airconditioner is non-functional and the current temperature is above the the desired temperature... display "Fix the A/C now!  It's hot!"
#- If the airconditioner is non-functional and the current temperature is below the the desired temperature... display "Fix the A/C whenever you have the chance...  It's cool..."

print "What is the current temperature? "
current_temp = gets.chomp
print "Is the AC working? "
ac_funct = gets.chomp
print "What temperature do you wish it was? "
wish_temp = gets.chomp

if(current_temp>wish_temp && (ac_funct == 'yes'))
  puts "Turn on the A/C Please"
elsif((ac_funct=='no')&&current_temp>wish_temp)
  puts "Fix the A/C now!  It's hot!"
elsif((ac_funct=='no')&&current_temp<wish_temp)
  puts "Fix the A/C whenever you have the chance...  It's cool..."
end
