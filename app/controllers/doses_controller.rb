class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    # link ingredient to its instance using find
    dose = Dose.new(dose_params)
    dose.cocktail = Cocktail.find(params[:cocktail_id])
    dose.save
    redirect_to cocktails_path
  end

  def destroy
    Dose.find(params[:id]).destroy
    redirect_to cocktails_path
  end

  private

  def dose_params
    params.require(:dose).permit(:ingredient_id, :description)
  end
end
