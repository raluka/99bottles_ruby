# frozen_string_literal: true

class Bottles
  def verse(line, high = 99)
    first_rime(line) +
      second_rime(line) +
      third_rime(line) +
      forth_rime(line - 1, high)
  end

  def verses(high, low)
    high.downto(low).collect do |item|
      verse(item)
    end.join("\n")
  end

  def song
    verses(99, 0)
  end
  private

  def first_rime(line)
    return 'No more bottles of beer on the wall, ' if line.zero?

    "#{line} #{support(line)} of beer on the wall, "
  end

  def second_rime(line)
    return "no more bottles of beer.\n" if line.zero?

    "#{line} #{support(line)} of beer.\n"
  end

  def third_rime(quantity)
    return 'Go to the store and buy some more, ' if quantity.zero?

    to_remove = 'it' if quantity == 1
    to_remove = 'one' if quantity > 1
    "Take #{to_remove} down and pass it around, "
  end

  def forth_rime(quantity, high)
    return "#{high} bottles of beer on the wall.\n" if quantity.negative?

    "#{remained_quantity(quantity)} #{support(quantity)} of beer on the wall.\n"
  end

  def support(quantity)
    support = 'bottle'
    support += 's' if quantity != 1
    support
  end

  def remained_quantity(quantity)
    return 'no more' if quantity.zero?

    quantity
  end
end
