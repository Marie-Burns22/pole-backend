ActiveAdmin.register Booking do
  permit_params :user_id, :time_slot_id, :course_id
  belongs_to :student
  belongs_to :time_slot  

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :user_id, :time_slot_id, :course_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:user_id, :time_slot_id, :course_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
