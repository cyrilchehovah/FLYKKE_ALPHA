ActiveAdmin.register Ad do

  permit_params :title, :description, :graphic_content, :url, :advertiser_id, :duration, ad_interests_attributes: [:interest]

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
      f.input :title
      f.input :description
      f.input :graphic_content
      f.input :url
      f.input :advertiser_id
      f.input :duration, as: :select,  collection: [5, 10]
    end
    f.inputs "bloc2" do
      f.has_many :ad_interests, heading: 'Interests', allow_destroy: true, new_record: true do |a|
        a.input :interest, as: :select, collection: Post::INTERESTS
      end
    end

    f.actions
  end



end
