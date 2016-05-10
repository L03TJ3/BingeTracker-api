class BingeEpisode < ActiveRecord::Base
  validates_presence_of :name, :description, :season
  belongs_to :binge_serie

  def self.search(search)
    where("binge_serie_id = ?", "#{search}")
  end
end
