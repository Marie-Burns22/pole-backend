class BlurbSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :placement, :content, :img
end
