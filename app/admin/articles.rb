ActiveAdmin.register Article do
  permit_params :published, :title, :content, :img


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :published, :title, :content
  #
  # or
  #
  # permit_params do
  #   permitted = [:published, :title, :content]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
