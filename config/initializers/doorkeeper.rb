Doorkeeper.configure do
  orm :active_record
  
  
  resource_owner_authenticator do
  #  User.find_by_id(session[:current_user_id]) || redirect_to(login_url)
  end


end
