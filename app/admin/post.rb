ActiveAdmin.register Post do

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
        f.input :status, as: :select,  collection: [:pending, :validated]
        f.input :title
        f.input :url
        f.input :interest
        f.input :site_name
      end
      f.actions
    end



  index do
    selectable_column
    column :id
    column :title
    column :url
    column :interest
    column :status
    column :site_name
    column :created_at
    actions
  end

  permit_params :title, :description, :graphic_content, :url, :site_name, :interest, :status
end
