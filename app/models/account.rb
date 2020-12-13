class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :trackable
  has_many :properties

  def full_name
    "#{first_name} #{last_name}"
  end

  def company
    "Fake Company"
  end
end
