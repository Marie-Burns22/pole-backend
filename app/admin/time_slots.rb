ActiveAdmin.register TimeSlot do
  permit_params :date, :time, :day, :course_id

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :date, :time, :day
  #
  # or
  #
  # permit_params do
  #   permitted = [:date, :time, :day]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
