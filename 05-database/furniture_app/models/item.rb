class Item < ActiveRecord::Base
  belongs_to :user
  has_many :discussions
  has_many :requests
end

#binding.pry
