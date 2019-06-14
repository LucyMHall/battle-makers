class Player

  attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = 60
  end

  def random_number_generator
    rand(1..30)
  end

  def attacked
    @hit_points -= random_number_generator
  end


end
