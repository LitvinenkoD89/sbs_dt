module State
  extend ActiveSupport::Concern

  included do
    scope :state_on, -> { where(status: 1) }
  end

  def update_status(status)
    self.update_attribute :status, status
  end
end
