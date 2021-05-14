class DishesController < ApplicationController

    def index
        dishes = Dish.all
        render json: dishes, except: [:created_at, :updated_at]
    end

    def create
        new_dish = Dish.create!(dish_params)
        render json: new_dish
    end

    def destroy
        dish = Dish.find(params[:id])
        dish.destroy!
        render json: {}
    end

    def update
        dish = Dish.find(params[:id])
        dish.update(dish_params)
        render json: dish
    end

    private

    def dish_params
        params.permit(:name, :description, :category, :image, :menu_id)
        # params.permit(:name, :description, :category, :image)
    end

end