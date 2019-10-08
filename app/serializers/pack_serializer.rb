class PackSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :price_cents, :quantity
end
