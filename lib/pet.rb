class FriendWithPet
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

class FriendWithChild
  def playdate_time_limit
    child.tolerance_for_social_contact
  end
end

class Child
  def tolerance_for_social_contact
    1800
  end
end

class Foo
  def playdate_time_limit
    best_friend.playdate_time_limit
  end
end
