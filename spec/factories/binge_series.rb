FactoryGirl.define do
  factory :binge_serie do
    title "MyString"
    description "MyText"
    image { Rack::Test::UploadedFile.new(File.join(
            Rails.root, 'spec', 'support', 'test_images','got.jpg')) }
  end
end
