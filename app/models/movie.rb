class Movie < ActiveRecord::Base
  validates :title, :presence => true
  validates :director, :presence => true
  validates :synopsis, :presence => true

  has_many :reviews

  def average_rating
      sum = 0
      number_reviews = self.reviews.count
      self.reviews.each() do |r|
        sum = sum.+(r.rating)
      end
    sum / number_reviews
  end
end
