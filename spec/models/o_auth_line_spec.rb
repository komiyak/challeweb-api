require 'rails_helper'

RSpec.describe OAuthLine, type: :model do
  describe 'Fixtures' do
    it do
      o_auth_line = create(:o_auth_line)
      expect(o_auth_line.id).not_to be_nil
    end
  end
end
