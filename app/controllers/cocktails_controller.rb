class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
    @dose = Dose.new
    @cocktail = Cocktail.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    Cocktail.create(cocktail_params)
    redirect_to cocktails_path
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
