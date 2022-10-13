class Course < ApplicationRecord
  has_many :lessons

  validates :title, :description, presence: true
end
