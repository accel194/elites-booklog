module ReviewsHelper
  def reviews_average(reviews)
    reviews.length > 0 ? reviews.inject(0) {|sum, r| sum + r.rank} / reviews.length.round(2) : 0
  end
end
