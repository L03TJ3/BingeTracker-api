require 'rails_helper'

describe BingeSerie do
  it { should validate_presence_of   :title}
  it { should validate_presence_of   :description}
  it { should validate_presence_of   :image}
  it { should have_many :binge_episodes}

  describe "seasons" do
    let(:series) { create(:binge_serie) }

    it "expects an empty []" do
      expect(series.seasons).to eq []
    end
  end

end
