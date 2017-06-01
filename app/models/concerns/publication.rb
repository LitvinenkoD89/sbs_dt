module Publication
  extend ActiveSupport::Concern

  included do
    scope :published, -> { where(published: 1) }
  end

  def update_published(status)
    self.update_attribute :published, status
  end
end