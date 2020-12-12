class Property < ApplicationRecord
  belongs_to :account

  has_one_attached :photo, dependent: :destroy

  validates :photo, attached: true, content_type: ['image/png', 'image/jpg', 'image/jpeg']

  scope :latest, -> { order created_at: :desc }
  
  # Ex:- scope :active, -> {where(:active => true)}
  # Ex:- scope :active, -> {where(:active => true)}


end
