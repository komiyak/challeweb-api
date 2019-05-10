require 'rails_helper'

RSpec.describe School, type: :model do
  describe 'Fixture' do
    it do
      school = create(:school)
      expect(school.id).not_to be_nil
    end
  end
end
