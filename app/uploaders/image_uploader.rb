# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick
  storage :file
  def store_dir
    "public/uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :thumb do
    process :resize_to_limit => [200, 200]
  end

  version :news_photo do
    process :resize_to_limit => [800, 600]
  end

  version :news_photo_small do
    process :resize_to_limit => [450, 340]
  end

  version :photos_gallery do
    process :resize_to_limit => [304, 236]
  end
end
