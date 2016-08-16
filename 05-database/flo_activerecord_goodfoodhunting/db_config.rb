require 'active_record'


#connect to databse
options = {
  adapter: 'postgresql',
  database: 'goodfoodhunting',
}

ActiveRecord::Base.establish_connection(options)
