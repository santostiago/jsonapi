class ApiController < ActionController::API
  include JSONAPI::ActsAsResourceController
  def context
    { current_user: current_user, action: params[:action] }
  end

  private

  def current_user
    user_id = request.env.fetch('HTTP_AUTHORIZATION', '')
    @current_user = User.find(user_id)
  rescue
    @current_user = nil
  end
end
