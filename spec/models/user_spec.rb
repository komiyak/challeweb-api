require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Fixtures' do
    it do
      user = create(:user)
      expect(user.id).not_to be_nil
    end

    context 'School records exist' do
      it 'returns a user with the school record' do
        school = create(:school)
        user = create(:user)
        expect(user.id).not_to be_nil
        expect(user.school_id).to eq(school.id)
      end
    end
  end
end
