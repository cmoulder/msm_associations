class Movie < ApplicationRecord
  validates :title, :director_id, presence: true
  validates :title, uniqueness: { scope: :year,
      message: "Cannot have the same Movie title in the same year" }
  validates :year, numericality: { only_integer: true, greater_than_or_equal_to: 1870, less_than_or_equal_to: 2050 }
  validates :duration, numericality: { only_integer: true, greater_than_or_equal_to: 0 , less_than_or_equal_to: 2764800 }
  belongs_to :director
  has_many :characters
end
