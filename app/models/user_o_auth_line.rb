class UserOAuthLine < ApplicationRecord
  belongs_to :user
  belongs_to :o_auth_line
end
