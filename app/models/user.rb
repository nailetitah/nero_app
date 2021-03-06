class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Liaisons
  belongs_to :training
  
  # Emails
  # after_create :welcome_send

  # Validations
  validates :first_name, presence: true
  validates :last_name, presence: true

end