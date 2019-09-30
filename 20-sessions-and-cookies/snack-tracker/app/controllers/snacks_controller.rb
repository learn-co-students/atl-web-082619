class SnacksController < ApplicationController

    before_action :find_snack, only: [:edit, :update, :show]

    def home
    end

    def index
        @snacks = Snack.all
    end

    def show
        cookies["favorite_flavor"] = "chocolate chip"
        cookies["last_snack"] = @snack.name
        session["secret_favorite"] = "oatmeal raisin"
    end

    def new
        @snack = Snack.new
    end

    def create
        @snack = Snack.new(snack_params)
        if @snack.save
            redirect_to snack_path(@snack)
        else
            render :new
        end
    end

    def edit

    end

    def update
        @snack.update(snack_params)
        redirect_to @snack
    end

    def destroy
        Snack.destroy(params[:id])
        redirect_to snacks_path
    end

    private

    def find_snack
        @snack = Snack.find(params[:id])
    end

    def snack_params
        params.require(:snack).permit(:name, :calories, 
            :deliciousness, :retailer_id)
    end
end
