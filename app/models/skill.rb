# Skill Model Class
class Skill < ApplicationRecord
  has_many :skills_categories
  has_many :categories, through: :skills_categories
end
