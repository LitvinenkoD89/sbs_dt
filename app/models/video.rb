class Video < ActiveRecord::Base
  include Publication
  paginates_per 4
  validates :title, :youtube_url, presence: true
end
