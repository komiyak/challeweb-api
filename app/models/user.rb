class User < ApplicationRecord
  belongs_to :school
  has_many :user_years
end
