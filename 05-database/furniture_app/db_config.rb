require 'active_record'

#connect to databse
options = {
  adapter: 'postgresql',
  database: 'furniturefinder',
}

ActiveRecord::Base.establish_connection(options)
