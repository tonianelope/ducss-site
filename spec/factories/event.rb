FactoryGirl.define do
  factory :event do
    title 'Learn to Code'
    description 'We host our first in our series of coding tutorials'
    # sequenced to ensure we don't create more than one event with the same slug
    sequence(:slug) { |n| "#{FFaker::Lorem.sentence.truncate(64).parameterize}#{n}" }
    location 'DUCSS Room'
    date { 7.days.from_now }
    thumbnail { fixture_file_upload "#{Rails.root}/spec/fixtures/images/event-test.jpg", 'image/jpg' }
  end
end
