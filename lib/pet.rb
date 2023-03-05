class Friend
  def durability_of_preferred_toy_of_pet
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

# Foo now only sends messages to best_friend
class Foo
  def durability_of_preferred_toy_of_best_friends_pet
    best_friend.durability_of_preferred_toy_of_pet
  end
end
