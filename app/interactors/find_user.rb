# grab all users
class FindUser
  include Interactor

  before do
    context.fail! unless (@user = User.find_by_id(context.id))
  end

  def call
    context.response[:user] = UserSerializer.new(@user)
  end
end
