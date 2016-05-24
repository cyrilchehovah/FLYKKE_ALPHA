ActiveAdmin.register Advertiser do
  permit_params :name, :about, :url, :picture

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  form do |f|
    f.inputs "bloc1" do
      f.input :name
      f.input :about
      f.input :url
      # f.input :picture
    end
    f.actions
  end


end
