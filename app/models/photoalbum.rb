class Photoalbum < ApplicationRecord
  belongs_to :photo
  belongs_to :category
end
