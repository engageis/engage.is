require 'machinist/active_record'

images_path = Rails.root + 'spec/support/images'

Member.blueprint do
  name { "Lorem" }
  specialities { "Lorem" }
  bio { "Lorem ipson" }
  avatar { File.open(File.join(images_path, "engage.png")) }
end

Project.blueprint do
  name { "Engage site" }
  description { "New Engage site" }
  thumbnail { File.open(File.join(images_path, "engage.png")) }
  url { "http://engage.is" }
end
