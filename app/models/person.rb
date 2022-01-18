class Person < ApplicationRecord
  has_many :roles, dependent: :destroy
  validates :first_name, :last_name, presence: true
end
