class Award < ApplicationRecord
  mount_uploader :link_photo, ImageUploader
end
