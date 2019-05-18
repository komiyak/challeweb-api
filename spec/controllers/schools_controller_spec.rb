require 'rails_helper'

RSpec.describe SchoolsController, type: :controller do
  describe "GET #index" do
    it "returns http success" do
      [1, 2, 3].shuffle.each do |order_number|
        create(:school, order_number: order_number)
      end

      get :index
      expect(response).to have_http_status(:success)

      body = parse_response_body
      expect(body['data']).not_to be_empty
      expect(body['data'].size).to eq(3)
      expect(body['data'][0]['type']).to eq('school')
      expect(body['data'][0]['attributes']['order_number']).to eq(1)
      expect(body['data'][1]['attributes']['order_number']).to eq(2)
      expect(body['data'][2]['attributes']['order_number']).to eq(3)
    end
  end
end
