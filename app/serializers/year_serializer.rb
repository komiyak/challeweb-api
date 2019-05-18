class YearSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :order_number
end
