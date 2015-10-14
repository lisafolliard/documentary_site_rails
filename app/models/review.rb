class Review < ActiveRecord::Base
  belongs_to :movie

  validates :name, :presence => true
  validates :comment, :presence => true
  validates :rating, :presence => true

end
