class Friend
  def playdate_time_limit
    pet.durability_of_preferred_toy
  end
end

class Pet
  def durability_of_preferred_toy
    preferred_toy.durability
  end
end

class Toy
  def durability
    1.hour
  end
end

# Foo now asks for what it wants instead of making assumptions about
# it's collaborators' collaborators
class Foo
  def playdate_time_limit
    best_friend.playdate_time_limit
  end
end
