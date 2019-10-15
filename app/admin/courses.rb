ActiveAdmin.register Course do
  permit_params :name, :size, :location, :description, :img
  menu label: "Services"
  
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :size, :location, :description
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :size, :location, :description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
