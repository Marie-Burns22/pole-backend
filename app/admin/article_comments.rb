ActiveAdmin.register ArticleComment do
  permit_params :student_id, :title, :content, :created_at

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :student_id, :title, :content
  #
  # or
  #
  # permit_params do
  #   permitted = [:student_id, :title, :content]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
