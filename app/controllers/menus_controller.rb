class MenusController < ApplicationController
  def menus
    @meals = Meal.all

    render json: @meals, status: :ok
  end
end
