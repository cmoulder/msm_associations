class Actor < ApplicationRecord
  validates :name, presence: true, uniqueness: { scope: :dob,
      message: "Cannot have more than one Actor with the same name and DOB" }
  has_many :characters
  has_many :movies, :through => :characters
end
