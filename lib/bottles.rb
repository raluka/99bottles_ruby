class Bottles
  def song
    verses(99, 0)
  end

  def verses(hi, lo)
    hi.downto(lo).map { |n| verse(n) }.join("\n")
  end

  def verse(n)
    "#{n == 0 ? 'No more' : n} bottle#{'s' if n != 1}" +
      ' of beer on the wall, ' +
      "#{n == 0 ? 'no more' : n} bottle#{'s' if n != 1} of beer.\n" +
      "#{if n > 0
           "Take #{n > 1 ? 'one' : 'it'} down and pass it around"
         else
           'Go to the store and buy some more'
         end}, " +
      "#{if n - 1 < 0
           99
         else
           n - 1 == 0 ? 'no more' : n - 1
         end} bottle#{'s' if n - 1 != 1}" +
      " of beer on the wall.\n"
  end
end
