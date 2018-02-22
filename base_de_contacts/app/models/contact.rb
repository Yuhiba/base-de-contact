class Contact < ApplicationRecord
  validates :firstname, :lastname, presence: true, length: { minimum: 5 }
  validates :email, presence: true
  validates :tel, presence: true, numericality: true, length: { minimum: 10, maximum: 15 }


end
