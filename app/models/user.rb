class User < ActiveRecord::Base
  has_many :todo_items
  has_many :completed_items
end
