### monster.rb - run this file

# Monster class
class Monster
  @@count = 0
  attr_accessor :habitat, :threat_level

  def initialize(threat_level = :medium)
    p "Rawr!"
    @habitat = habitat
    @threat_level = threat_level
    if !([:low, :medium, :high, :midnight].include? @threat_level)
      p "unacceptable treath level !!"
      exception
    else
      p "threat level is expected"
    end
    @@count +=1
    p "#{@@count} monsters now roam the world!"
  end

  def habitat? (test_habitat)
    test_habitat == @habitat
  end

  def self.count
    @@count
  end

  def exception
    p "now in exception method"
    raise RuntimeError.new("cannot create monster - invalid threat level: #{@threat_level} ")
  end
end


# Zombie class



# Werewolf class



# Flying module



# Vampire class




### "Driver" Code Area
# m = Monster.new
# p m
#
# rabbit = Monster.new
# rabbit.habitat = "Cave of Caerbannog"
# p rabbit.habitat

dalek = Monster.new(:high)
p dalek.threat_level

teletubby = Monster.new
p teletubby.threat_level

# Challenge 6
yeti = Monster.new
yeti.habitat = "tundra"
p yeti.habitat?("swamp")
p yeti.habitat?("tundra")

# Challenge 7
predator = Monster.new(:high)
alien = Monster.new(:high)

# Challenge 8
p Monster.count

# Challenge 9
p rubber_ducky = Monster.new(:friendly)
