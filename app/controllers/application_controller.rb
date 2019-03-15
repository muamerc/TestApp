class ApplicationController < ActionController::Base
  #before_action :authenticate_request
  attr_reader :current_user

  private

  def authenticate_request
    @current_user = AuthorizeApiRequest.call(request.headers).result
    redirect_to :login unless @current_user
  end

end
