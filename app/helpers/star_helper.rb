module StarHelper

  def avg_stars(restaurant)
    return 'No reviews yet' if restaurant.reviews.count == 0
    stars = ""
    restaurant.reviews.average(:stars).round.times do
      stars = stars + fa_icon('star')
    end
    return stars.html_safe
  end

  def stars(review)
    return nil if review.stars == nil
    stars = ''
    review.stars.times do
      stars = stars + fa_icon('star')
    end
    return stars.html_safe
  end

end
