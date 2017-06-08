# grab all users
class GetAllUsers
  include Interactor

  def call
    context.response[:users] = User.includes(skills: :categories).all.map{ |u| UserSerializer.new(u)}
  end
end