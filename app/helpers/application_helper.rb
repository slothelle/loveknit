module ApplicationHelper
  def current_user
    @current_user ||= session[:current_user_id] && User.find(session[:current_user_id])
  end

  def is_user?
    current_user.id == params[:id].to_i
  end

  def create_session
    session[:current_user_id] = @user.id
  end

  # Move below methods somewhere else after functionality works
  def user_patterns(user_id)
    patterns = Pattern.find_all_by_user_id(user_id)
    results = patterns.map do |p|
      "<p class='separator'>#{p.garment.category}: <a href='/pattern/#{p.garment.category.downcase}/#{p.id}'>#{p.name}</a></p>"
    end
    results.join
  end
end
