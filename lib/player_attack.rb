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

  def self.computer_attack(player)
    new(player).computer_attack
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

  def computer_attack
    computer_random_attack
  end

  private

  def random
    rand(1..10)
  end

  def computer_random_attack
    attack = [method(:tackle), method(:fire_ball), method(:death_punch)].sample
    attack.call
  end

end
