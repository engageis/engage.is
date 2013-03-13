require 'machinist/active_record'

images_path = Rails.root + 'spec/support/images'

Member.blueprint do
  name { "Lorem" }
  specialities { "Lorem" }
  bio { "Lorem ipson" }
  avatar { File.open(File.join(images_path, "engage.png")) }
end
