ActiveAdmin.register TimeSlot do
  permit_params :date, :time, :am_pm, :status
  config.create_another = true

  form do |f|
    f.input :date, as: :datepicker
    f.input :time, :as => :select, :collection => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 112]
    f.input :am_pm, :as => :radio, :collection => ["am", "pm"]
    f.input :status, :as => :radio, :collection => ["available", "requested","booked"]
    f.actions
                      # datepicker_options: {
                      #   min_date: "2013-10-8",
                      #   max_date: "+3D"
                      # }

  # f.input :ends_at, as: :datepicker,
  #                   datepicker_options: {
  #                     min_date: 3.days.ago.to_date,
  #                     max_date: "+1W +5D"
  #                   }
end

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
