class BingeEpisode < ActiveRecord::Base
  validates_presence_of :name, :description, :season
  belongs_to :binge_serie
end
