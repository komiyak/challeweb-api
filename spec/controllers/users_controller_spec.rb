require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "GET #index" do
    it "returns http success" do
      create(:user)

      get :index
      expect(response).to have_http_status(:success)

      body = parse_response_body
      expect(body['data']).not_to be_empty
      expect(body['data'].size).to eq(1)
      expect(body['data'][0]['type']).to eq('user')
    end
  end
end
