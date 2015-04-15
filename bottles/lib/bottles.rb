class Bottles
  def song
    verses(99, 0)
  end

  def verses(upper, lower)
    upper.downto(lower).map { |i| verse(i) }.join("\n")
  end

  def verse(number)
    "#{amount(number).capitalize} #{container(number)} of beer on the wall, " +
    "#{amount(number)} #{container(number)} of beer.\n" +
    "#{action(number)}, " +
    "#{amount(successor(number))} #{container(successor(number))} of beer on the wall.\n"
  end

  def successor(quantity)
    if quantity == 0
      99
    else
      quantity - 1
    end
  end

  def action(quantity)
    if quantity == 0
      "Go to the store and buy some more"
    else
      "Take #{pronoun(quantity)} down and pass it around"
    end
  end

  def amount(quantity)
    if quantity == 0
      "no more"
    else
      quantity.to_s
    end
  end

  def pronoun(quantity)
    if quantity==1
      "it"
    else
      "one"
    end
  end

  def container(quantity)
    if quantity==1
      "bottle"
    else
      "bottles"
    end
  end
end
