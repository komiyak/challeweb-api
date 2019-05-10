require 'rails_helper'

RSpec.describe UserOAuthLine, type: :model do
  describe 'Fixtures' do
    it do
      user_o_auth_line = create(:user_o_auth_line)
      expect(user_o_auth_line.id).not_to be_nil
    end
  end
end
