class TitleSerializer
  include FastJsonapi::ObjectSerializer
  attributes :placement, :content, :img
end
