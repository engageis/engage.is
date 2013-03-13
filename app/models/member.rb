class Member < ActiveRecord::Base
  validates :name, :specialities, :bio, :avatar, presence: true
  mount_uploader :avatar, AvatarUploader
end
