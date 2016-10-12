class Player

<<<<<<< HEAD
 DEFAULT_HIT_POINTS = 60

attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HIT_POINTS
  end

 def receive_damage
  @hit_points -= 10
 end

=======
DEFAULT_HIT_POINTS = 60

attr_reader :name, :hit_points

  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @hit_points -= 10
  end
>>>>>>> 1a2558bfe51428dd6a492500163f110ca1ace7e9

end
