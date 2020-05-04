class Potluck
  attr_reader :date, :dishes

  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(category)
    @dishes.find_all do |dish|
      dish.category == category
    end
  end

  def menu
    menu = {}
    @dishes.each do |dish|
      if !menu[dish.category]
        menu[dish.category] = [dish.name]
      else
        menu[dish.category] << dish.name
      end
    end
    menu.map do |category, dishes|
      dishes.sort!
    end
    require 'pry'; binding.pry
  end
end
