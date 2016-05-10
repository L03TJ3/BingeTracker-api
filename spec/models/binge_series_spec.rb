require 'rails_helper'

describe BingeSeries do
  it { should validate_presence_of   :title}
  it { should validate_presence_of   :description}
  it { should validate_presence_of   :image}
  it { should have_many :binge_episodes}
end
