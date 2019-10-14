class TrainersController < ApplicationController
  def index
    @trainers = Trainer.all
    render json: @trainers, :status => :ok, :include => [:pokemons]
  end
end
