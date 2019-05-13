require 'rails_helper'

RSpec.describe SampleDataTask, type: :tasks do
  describe 'Fixtures' do
    it do
      year = create(:year)
      expect(year.id).not_to be_nil
    end
  end
end
