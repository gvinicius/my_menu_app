require 'rails_helper'

RSpec.describe 'Menus', type: :request do
  MEAL_NUMBER = 5
  COOL_MEAL_NAME = 'Sushi'

  describe 'GET /menus' do
    let!(:meals) do
      create_list(:meal, MEAL_NUMBER)
    end

    it 'returns http success' do
      get '/menus'
      expect(response).to have_http_status(:success)
    end

    it 'returns the correct number of meals' do
      get '/menus'
      expect(JSON.parse(response.body).count).to eq(MEAL_NUMBER)
    end

    it 'returns the correct name of the first meal' do
      meals.first.update(name: COOL_MEAL_NAME)

      get '/menus'
      expect(JSON.parse(response.body)[0]['name']).to eq(COOL_MEAL_NAME)
    end
  end
end
