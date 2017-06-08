# serialize user objects
class UserSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :skills
end
