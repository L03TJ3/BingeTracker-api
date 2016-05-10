class BingeEpisode < ActiveRecord::Base
  validates_presence_of :name, :description, :seasons
  belongs_to :binge_serie
end
