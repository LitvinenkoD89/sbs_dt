class Category < ActiveRecord::Base
  validates :title, presence: true

  has_many :photoalbums, :class_name => 'Photoalbum'
  has_many :photos, through: :photoalbums
end
