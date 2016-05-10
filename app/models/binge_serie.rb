class BingeSerie < ActiveRecord::Base
  validates_presence_of :title, :description, :image
  has_many :binge_episodes
end
