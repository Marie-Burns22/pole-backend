class TimeSlotSerializer
  include FastJsonapi::ObjectSerializer
  attributes :date, :time, :am_pm, :status 
end
