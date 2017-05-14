class Director < ApplicationRecord
validates :name, presence: true, uniqueness: { scope: :dob,
    message: "Cannot have the same Director name with the same DOB" }
has_many :movies
end
