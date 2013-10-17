class Step < ActiveRecord::Base
  attr_accessible :description, :guide_id, :name
  belongs_to :guide
end
