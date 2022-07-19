require_relative 'recipe'
require_relative 'view'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    display_recipes
  end

  def create
    name = @view.ask_for_name
    description = @view.ask_for_description
    recipe = Recipe.new(name, description)
    @cookbook.add_recipe(recipe)
  end

  def destroy
    display_recipes
    index = @view.ask_for_index
    @cookbook.remove_recipe(index)
  end

  private

  def display_recipes
    recipes = @cookbook.all
    @view.display(recipes)
  end
end
