class TestimonialSerializer
  include FastJsonapi::ObjectSerializer
  attributes :author, :content
end
