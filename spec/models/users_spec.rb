require 'rails_helper'

describe User do
  describe "validations" do
    it { should validate_presence_of   :username}
    it { should validate_presence_of   :email}
    it { should validate_uniqueness_of(:email).case_insensitive }
  end
end
