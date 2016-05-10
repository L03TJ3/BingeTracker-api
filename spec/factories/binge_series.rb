FactoryGirl.define do
  factory :binge_series, class: 'BingeSerie' do
    title "MyString"
    description "MyText"
    image Rack::Test::UploadedFile.new(File.open(File.join(
          Rails.root, '/public/images/got.jpg')))
  end
end
