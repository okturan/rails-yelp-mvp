class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
  validates :name, :address, :category, presence: true

  def avg_rating
    total = 0
    reviews.each do |review|
      total += review.rating
    end
      unless reviews.count == 0 
        return (total / reviews.count)
      else
        return "No reviews"
      end
  end
end
