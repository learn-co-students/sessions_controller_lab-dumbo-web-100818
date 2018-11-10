module SessionsHelper
  def valid_name?
    params[:name] && !params[:name].empty?
  end
end
