class Attack
  def initialize(player)
   @player = player
  end

  def self.tackle(player)
   new(player).tackle
  end

  def self.fire_ball(player)
    new(player).fire_ball
  end

  def self.death_punch(player)
    new(player).death_punch
  end

  def tackle
   @player.receive_damage(random)
  end

  def fire_ball
   @player.receive_damage(5)
  end

  def death_punch
    damage = [0, 0, 20].sample
    @player.receive_damage(damage)
  end

  private

  def random
    rand(1..10)
  end

end

#for action
