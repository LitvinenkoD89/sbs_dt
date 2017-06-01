class Video < ActiveRecord::Base
  include Publication
  validates :title, :youtube_url, presence: true
end
