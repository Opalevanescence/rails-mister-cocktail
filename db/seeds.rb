require 'faker'

5.times do
  5.times do
    # Ingredient name
    @ingredient = Ingredient.create(name: Faker::Food.spice)
  end

  # Cocktail name
  cocktail = Cocktail.create(name: Faker::Superhero.name)

  5.times do
    # Description in doses
    Dose.create(description: Faker::Food.measurement, cocktail: cocktail,
                ingredient: Ingredient.all.sample)
  end
end
