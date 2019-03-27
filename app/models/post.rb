class Post < ApplicationRecord

  # img belongs to user
  belongs_to :user

  # post has image
  has_one_attached :image

  # validate image post has image
  validate :image_present

  def image_present
    errors.add(:image, "Can't be blank!") unless image.attached?
  end
  
end
