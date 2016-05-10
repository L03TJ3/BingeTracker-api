require 'rails_helper'

describe BingeEpisodes do
  it { should validate_presence_of   :name}
  it { should validate_presence_of   :description}
  it { should validate_presence_of   :season_number}
  it { should belong_to :binge_series}
end
