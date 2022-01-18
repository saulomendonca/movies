class Role < ApplicationRecord
  belongs_to :movie
  belongs_to :person

  validates :role_type, inclusion: { in: %w(casting director producer),
    message: "%{value} is not a valid role" }

end
