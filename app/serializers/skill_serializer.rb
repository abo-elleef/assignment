# serialize skill objects
class SkillSerializer < ActiveModel::Serializer
  attributes :id, :name, :categories

  def categories
    object.categories.map do |c|
      CategorySerializer.new(c)
    end
  end
end
