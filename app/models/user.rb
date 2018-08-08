class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, length: { maximum: 50 }
  validates :last_name, length: { maximum: 50 }

  has_many :chat_rooms, dependent: :destroy
  has_many :messages, dependent: :destroy

  def name
    if first_name == ""
      email.split('@')[0]
    else
      first_name
    end
  end

  def full_name
    first_name + " " + last_name
  end
end
