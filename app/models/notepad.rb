class Notepad < ApplicationRecord
  belongs_to :article
  belongs_to :event
end
