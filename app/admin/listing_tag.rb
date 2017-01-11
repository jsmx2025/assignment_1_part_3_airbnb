ActiveAdmin.register ListingTag do

 permit_params :private_room, :entire_home, :number_of_bedrooms, :number_of_bathrooms, :number_of_beds, :max_occupants, :city, :neighborhood, :listing_id

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


end
