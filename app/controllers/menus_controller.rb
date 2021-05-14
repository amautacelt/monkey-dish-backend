class MenusController < ApplicationController

    def index
        menus = Menu.all
        render json: menus, except: [:created_at, :updated_at]
    end

    def create
        new_menu = Menu.create!()
        render json: new_menu
    end


    private

    def menu_params
        params.permit(:restaurant_name, :restaurant_description, :manager_id)
    end

end