class SchoolSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :order_number
end
