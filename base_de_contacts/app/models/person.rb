class Person < ApplicationRecord
  validates :firstname, :lastname, presence: true, length: { minimum: 5 }
  validates :email, presence: true
end
