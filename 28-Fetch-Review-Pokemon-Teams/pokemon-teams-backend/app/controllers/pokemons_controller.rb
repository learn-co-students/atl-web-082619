class PokemonsController < ApplicationController
  def create
    name = Faker::Name.first_name
    species = Faker::Games::Pokemon.name
    @pokemon = Pokemon.create(
      nickname: name,
      species: species,
      trainer_id: pokemon_params['trainer_id']
    )
    render json: @pokemon, :status => :ok
  end

  def destroy
    @pokemon = Pokemon.find_by(:id => params[:id])
    @pokemon.destroy
    render json: @pokemon, :status => :ok
  end

  private
  def pokemon_params
    params.permit(:nickname,:species,:trainer_id)
  end

end
