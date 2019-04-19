require_relative 'view'
require_relative 'recipe'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    display_recipes
  end

  def create
    # demande au user le nom
    name = @view.ask_for('name')
    # demande au user la description
    description = @view.ask_for("description")

    # Fabriquer une recette
    recipe = Recipe.new(name, description)
    # demander au repo de la stocker
    @cookbook.add_recipe(recipe)
  end

  def destroy
    display_recipes
    recipe_index = @view.ask_for_id
    @cookbook.remove_recipe(recipe_index)
  end

  private

  def display_recipes
    recipes = @cookbook.all
    @view.display_all(recipes)
  end
end
