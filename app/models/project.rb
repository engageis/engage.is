class Project < ActiveRecord::Base
  validates :description, :name, :thumbnail, presence: true
  validates_format_of :url, with: URI::regexp(%w(http https)), allow_nil: true, allow_blank: true
  mount_uploader :thumbnail, ThumbnailUploader
end
