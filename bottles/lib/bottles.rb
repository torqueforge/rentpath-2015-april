class Bottles

  def song
    verses(99, 0)
  end

  def verses(upper, lower)
    upper.downto(lower).map { |i| verse(i) }.join("\n")
  end

  def verse(number)
    bottle_number = bottle_number_for(number)
    "#{bottle_number.amount.capitalize} #{bottle_number.container} of beer on the wall, " +
    "#{bottle_number.amount} #{bottle_number.container} of beer.\n" +
    "#{bottle_number.action}, " +
    "#{amount(successor(number))} #{container(successor(number))} of beer on the wall.\n"
  end

  def bottle_number_for(number)
    BottleNumber.new(number)
  end

  private

  def container(bottle_number)
    BottleNumber.new(bottle_number).container
  end

  def pronoun(bottle_number)
    BottleNumber.new(bottle_number).pronoun
  end

  def amount(bottle_number)
    BottleNumber.new(bottle_number).amount
  end

  def action(bottle_number)
    BottleNumber.new(bottle_number).action
  end

  def successor(bottle_number)
    BottleNumber.new(bottle_number).successor
  end
end

class BottleNumber

  attr_reader :number

  def initialize(number)
    @number = number
  end

  def container
    if number == 1
      'bottle'
    else
      'bottles'
    end
  end

  def pronoun
    if number == 1
      'it'
    else
      'one'
    end
  end

  def amount
    if number == 0
      'no more'
    else
      number.to_s
    end
  end

  def action
    if number == 0
      'Go to the store and buy some more'
    else
      "Take #{pronoun} down and pass it around"
    end
  end

  def successor
    if number == 0
      99
    else
      number - 1
    end
  end

end
