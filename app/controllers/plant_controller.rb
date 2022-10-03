class PlantController < ApplicationController
    #  returns an array of all plants
    def index
        plants = Plant.all
        render json: plants
    end
    # returns the first plant (FAILED - 2)
    # returns the second plant (FAILED - 3)
    def show
        plant = Plant.find(params[:id])
        render json: plant
    end
    # creates a new plant (FAILED - 4)
    # returns the plant data (FAILED - 5)
    # returns a status code of 201 (created) (FAILED - 6)
    def create
        plants = Plant.create(plant_params)
        render json: plant, status: :created, status_code: 201, status_message: :'created'
    end
end
