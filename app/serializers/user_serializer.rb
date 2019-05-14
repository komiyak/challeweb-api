class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :sei,
             :mei,
             :created_at,
             :updated_at

  belongs_to :school
end
