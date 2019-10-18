ActiveAdmin.register TimeSlot do
  permit_params :date, :time, :am_pm, :status, :min
  config.create_another = true

  form do |f|
    f.input :date, as: :datepicker
    f.input :time, :as => :select, :collection => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
    f.input :min, :as => :select, :collection => [00, 15, 30, 45]
    f.input :am_pm, :as => :radio, :collection => ["am", "pm"]
    f.input :status, :as => :radio, :collection => ["available", "requested","booked"]
    f.actions
  end

  
  
end
