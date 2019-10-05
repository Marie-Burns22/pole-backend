ActiveAdmin.register Pack do
  permit_params :name, :price_cents, :price_currency, :quantity

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :price_cents, :price_currency, :quantity
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :price_cents, :price_currency, :quantity]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
