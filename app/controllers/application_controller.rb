# application controller class
class ApplicationController < ActionController::API
  def answer(interactor)
    render json: build_answer(interactor).response
  end

  def build_answer(interactor)
    interactor.call({ response: {} }.merge(params))
  end
end
