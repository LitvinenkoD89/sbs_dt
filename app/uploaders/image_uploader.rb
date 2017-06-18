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

  version :avatar do
    process :resize_to_limit => [270, 260]
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
  
  version :service_main_photo_3 do
    process :resize_to_limit => [512, 372]
  end
    
  version :service_main_photo_2 do
    process :resize_to_limit => [768, 560]
  end

  version :award_img do
    process :resize_to_limit => [580, 830]
  end

  version :article_main_img do
    process :resize_to_limit => [1170, 560]
  end  
end
