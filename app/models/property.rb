class Property < ApplicationRecord
  belongs_to :account

  has_one_attached :photo, dependent: :destroy

  validates :photo, attached: true, content_type: ['image/png', 'image/jpg', 'image/jpeg']

  # validates :photo, presence: true, blob: { content_type: ['image/jpg', 'image/jpeg', 'image/png'], size_range: 1..3.megabytes }
  # validates :photo, attached: true, content_type: ['image/png', 'image/jpg', 'image/jpeg']
end
