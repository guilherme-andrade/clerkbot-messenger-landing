module ApplicationHelper
 def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end



  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end




  # Proxy to devise map class
  def resource_class
    devise_mapping.to
  end
end
