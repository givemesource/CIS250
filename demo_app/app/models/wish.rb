class Wish < ActiveRecord::Base
  belongs_to :wisher

  validates :description, :length => { :maximum => 140 }
end
