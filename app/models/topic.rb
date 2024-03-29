class Topic < ApplicationRecord
  belongs_to :admin
  validates :topic, presence: true
end
