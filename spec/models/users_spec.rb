require 'rails_helper'
require 'support/shoulda_matchers'

RSpec.describe User do
  describe "validations" do
    it { should validates_presence_of :username}
    it { should validates_presence_of :email}
    it { should validates_presence_of :password}
  end
end
