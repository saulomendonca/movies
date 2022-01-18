class Movie < ApplicationRecord
  FIRST_RELEASE_YEAR = 1900

  validates :title, presence: true
  validates :release_year, numericality: { 
    only_integer: true,  
    greater_than: FIRST_RELEASE_YEAR, 
    less_than: (Time.new.year + 10)
  }
end
