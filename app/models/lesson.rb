class Lesson < ApplicationRecord
  belongs_to :course

  validates :title, :description, presence: true
end
