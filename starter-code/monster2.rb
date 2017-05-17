class Monster2
  attr_accessor :threat_level
  def initialize(threat_level=:medium)
  	@threat_level = threat_level
  end

  def get_dangerous
    # ruby version of a switch statement is case
    case @threat_level
      when :low
        @threat_level = :medium
      when :medium
        @threat_level = :high
      when :high
        @threat_level = :midnight
      when :midnight
        :midnight
    end
  end
end

class Werewolf < Monster2
end

class  Zombie < Monster2
  attr_accessor :habitat, :name

  def initialize
    @habitat = "graveyard"
    @name
  end
end


rob = Zombie.new
puts rob.habitat
# "graveyard"
puts rob.threat_level
# :medium
rob.name = "Rob Zombie"
puts rob.name
# "Rob Zombie"

#  ??? if zombie inherits from monsters2, why need to initialize threat_leve again ??
