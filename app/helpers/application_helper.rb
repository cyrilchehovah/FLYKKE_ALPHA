module ApplicationHelper

  def belongs_to_user?(resource)
    resource.user == current_user
  end

  def resource_name
    :user
  end

  def resource_class
    devise_mapping.to
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
