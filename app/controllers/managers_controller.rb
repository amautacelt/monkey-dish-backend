class ManagersController < ApplicationController

    def index
        managers = Manager.all
        render json: managers, except: [:created_at, :updated_at]
    end

    def create
        new_manager = Manager.create!()
        render json: new_manager
    end


    private

    def manager_params
        params.permit(:first_name, :last_name, :title)
    end

end