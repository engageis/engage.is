class AvatarUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :file

  #process :resize_to_fill => [500, 400]
  process :convert => 'png'

  def extension_white_list
    %w(jpg jpeg gif png)
  end
end
