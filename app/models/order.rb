class Order < ApplicationRecord
  include Processed

  validates :phone, presence: true
end
