class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :trackable
  has_many :properties

  has_one_attached :image, dependent: :destroy

  validates :image, attached: true, content_type: ['image/png', 'image/jpg', 'image/jpeg']

  def full_name
    "#{first_name} #{last_name}"
  end
end
