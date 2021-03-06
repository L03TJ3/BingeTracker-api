class BingeSerie < ActiveRecord::Base
  validates_presence_of :title, :description, :image
  has_many :binge_episodes
  mount_uploader :image, ImageUploader

  def seasons
    binge_episodes.pluck(:season).uniq.sort
  end
end
