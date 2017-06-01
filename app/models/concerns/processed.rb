module Processed
  extend ActiveSupport::Concern

  included do
    scope :processed, -> { where(processed: 1) }
  end

  def update_processed(status)
    self.update_attribute :processed, status
  end
end