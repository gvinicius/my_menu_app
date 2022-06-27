require 'rails_helper'

RSpec.describe "Menus", type: :request do
  describe "GET /menus" do
    it "returns http success" do
      get "/menus/menus"
      expect(response).to have_http_status(:success)
    end
  end

end
