class SpicesController < ApplicationController

    def show 
        spice = Spice.all
        render json: spice
    end 

    def new_spice
        spice = Spice.create(spice_params)
        render json: spice, status: :created
    end

    def update
        spice = Spice.update(spice_params)
        render json: spice
    end

    def delete
        spice.destroy
        head: no_content
    end

    private

    def find_spice
        Spice.find_by(id:params[:id])
    end

    def spice_params
        params.permit(:title, :image, :description, :notes, :rating)
    end



end
