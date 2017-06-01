class Order < ActiveRecord::Base
  include Processed

  validates :phone, presence: true
end
