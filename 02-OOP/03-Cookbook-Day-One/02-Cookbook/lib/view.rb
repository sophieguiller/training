class View
  def display(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1} - #{recipe.name}"
    end
  end

  def ask_for_name
    puts "What's the name of your recipe?"
    return gets.chomp
  end

  def ask_for_description
    puts "What's the description of your recipe?"
    return gets.chomp
  end

  def ask_for_index
    puts "What's the index of the recipe you wish to delete?"
    return gets.chomp.to_i - 1
  end
end
