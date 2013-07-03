module ApplicationHelper
  def current_user
    @current_user ||= session[:current_user_id] && User.find(session[:current_user_id])
  end

  def is_user?
    current_user.id == params[:id].to_i
  end
end
