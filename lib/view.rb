class View
  def display_all(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1} - #{recipe.name}"
    end
  end

  def ask_for(stuff)
    puts "Give me a #{stuff}"
    gets.chomp
  end

  def ask_for_id
    puts "Give me a index"
    gets.chomp.to_i - 1
  end
end
