require 'rails_helper'

RSpec.describe UserYear, type: :model do
  describe 'Fixtures' do
    it do
      user_year = create(:user_year)
      expect(user_year.id).not_to be_nil
    end
  end
end
