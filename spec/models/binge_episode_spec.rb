require 'rails_helper'

describe BingeEpisode do
  it { should validate_presence_of   :name}
  it { should validate_presence_of   :description}
  it { should validate_presence_of   :season}
  it { should belong_to :binge_serie}
end
