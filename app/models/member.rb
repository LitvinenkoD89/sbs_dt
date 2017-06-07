class Member < ApplicationRecord
  mount_uploader :avatar, ImageUploader
end
