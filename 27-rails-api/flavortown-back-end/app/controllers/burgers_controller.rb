class BurgersController < ApplicationController

  def index
    # model
    @burgers = Burger.all
    # byebug
    # response
    render json: BurgerSerializer.new(@burgers).serialized_json, status: :ok

  end


  def show
    # model
    @burger = Burger.find_by(id: params[:id])
    # response
    render json: @burger, status: 402

  end

  def create
    # model?
    byebug
    @burger = Burger.create(burger_params)
    #res
    render json: @burger, status: 201
  end


  def update
    # model

    # res
  end

  private
  def burger_params
      params.require(:burger).permit(:temp, :protein, :cheese)

  end

end # end controller
