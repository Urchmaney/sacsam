class CordinateController < ApplicationController
    def index
        render json: Cordinate.all
    end

    def create
        cord = Cordinate.new(cord_params)
        if cord.save
            render json: cord, status: :created
        else
            render json: { errors: cord.errors.full_messages }, status: :unprocessable_entity
        end
    end

    private

    def cord_params
        params.permit(:name)
    end
end
