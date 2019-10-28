class VideoSerializer
  include FastJsonapi::ObjectSerializer
  attributes :vid, :title, :description
end
