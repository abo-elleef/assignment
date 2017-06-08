# skill category model class
class SkillsCategory < ApplicationRecord
  belongs_to :category
  belongs_to :skill
end
