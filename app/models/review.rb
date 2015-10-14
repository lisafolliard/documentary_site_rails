class Review < ActiveRecord::Base
  belongs_to :movie

  validates :name, :presence => true
  validates :comment, :presence => true
  validates :rating, :numericality => {:greater_than => 0, :less_than => 6}, :presence => true

end
