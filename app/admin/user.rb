ActiveAdmin.register User do

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
# Documentation about show in active admin http://activeadmin.info/docs/6-show-pages.html

  index do
     selectable_column
     column :id
     column :first_name
     column :last_name
     column :email
     column :created_at
     actions
   end

  show do
    attributes_table do
      row :first_name
      row :last_name
      row :email

      row :created_at
      row :updated_at
    end
  end


end
