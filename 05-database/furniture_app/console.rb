require 'pry'
require 'active_record'

# STDERR = standart error, to see what going on in the back, debugging
ActiveRecord::Base.logger = Logger.new(STDERR)

# load my database
require './db_config'

require './models/item'
require './models/discussion'
require './models/user'
require './models/request'


binding.pry
