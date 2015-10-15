class Movie < ActiveRecord::Base
  validates :title, :presence => true
  validates :director, :presence => true
  validates :synopsis, :presence => true

  has_many :reviews

  def average_rating
      sum = 0
      number_reviews = self.reviews.count

      if number_reviews == 0
        return 'There are no ratings yet for this movie.'
      else
        self.reviews.each() do |movie_rating|
          sum = sum.+(movie_rating.rating)
      end
      sum / number_reviews
    end
  end
end
