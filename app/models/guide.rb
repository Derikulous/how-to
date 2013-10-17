class Guide < ActiveRecord::Base
  attr_accessible :name
  has_many :steps
end
