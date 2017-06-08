# Category Model Class
class Category < ApplicationRecord
  has_many :skills_categories
  has_many :skills, through: :skills_categories
end
