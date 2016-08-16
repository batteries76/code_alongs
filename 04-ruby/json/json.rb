require 'httparty'
require 'pry'
require 'json'

data = JSON.parse(IO.read('issues.json'))

login = data[0]["user"]["login"]
puts(login)

binding.pry
