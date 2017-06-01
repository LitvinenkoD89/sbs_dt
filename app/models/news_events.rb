class NewsEvent < ApplicationRecord
  belongs_to :news
  belongs_to :event
end
