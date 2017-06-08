# user controller class
class UsersController < ApplicationController

  def index
    answer(GetAllUsers)
  end

  def show 
    answer(FindUser)
  end
end
