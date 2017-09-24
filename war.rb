class War
  attr_accessor :attacker_armies, :defender_armies

  def initialize
    @attacker_armies = 5
    @defender_armies = 5
  end

  def throw_dice
    rolls = {}
    attacker_rolls = []
    defender_rolls = []

    if attacker_armies == 2
      2.times do
        attacker_rolls << [*1..6].sample
      end
    elsif attacker_armies == 1
      attacker_rolls << [*1..6].sample
    else
      3.times do
        attacker_rolls << [*1..6].sample
      end
    end

    if defender_armies < 2
      defender_rolls << [*1..6].sample
    elsif defender_armies >= 2
      2.times do
        defender_rolls << [*1..6].sample
      end
    end

    rolls[:attacker_rolls] = attacker_rolls
    rolls[:defender_rolls] = defender_rolls

    return rolls
  end

  def battle
    rolls = throw_dice

    zipped_rolls = rolls[:attacker_rolls].zip(rolls[:defender_rolls]).
      reject { |roll| roll.include?(nil) }

    comparison = zipped_rolls.each do |roll|
      if roll[0] > roll[1]
        @defender_armies -= 1
        p "Attacker takes over with #{roll[0]}"
      elsif roll[1] > roll[0]
        @attacker_armies -= 1
        p "Defender takes over with #{roll[1]}"
      else
        p 'Tied!'
      end
    end

    p comparison
    p attacker_armies
    p defender_armies
  end

  def fight_war
    while attacker_armies > 0 && defender_armies > 0
      battle
    end

    results
  end

  def results
    if attacker_armies > defender_armies
      p "Attacker wins with #{attacker_armies} armies remaining"
    elsif defender_armies > attacker_armies
      p "Defender wins with #{defender_armies} armies remaining"
    else
      p "Tied!"
    end
  end
end

waterloo = War.new
waterloo.fight_war
