class Contact < ApplicationRecord
  validates :firstname, :lastname, presence: true, length: { minimum: 2 }
  validates :email, presence: true
  validates :tel, presence: true, numericality: true, length: { minimum: 9, maximum: 15 }


end
