class Bottles
  def song
    verses(99,0)
  end

  def verses(num_from, num_to)
    num_from.downto(num_to).map { |num| verse(num) }.join("\n")
  end

  def verse(num)
    "#{amount(num).capitalize} #{container(num)} of beer on the wall, #{amount(num)} #{container(num)} of beer.\n#{action(num)}, #{amount(num-1)} #{container(num-1)} of beer on the wall.\n"
  end

  def container(num)
    if num == 1
      'bottle'
    else
      'bottles'
    end
  end

  def pronoun(num)
    if num == 1
      'it'
    else
      'one'
    end
  end

  def amount(num)
    if num == 0
      'no more'
    elsif num == -1
      99.to_s
    else
      num.to_s
    end
  end

  def action(num)
    if num == 0
      'Go to the store and buy some more'
    else
      "Take #{pronoun(num)} down and pass it around"
    end
  end
end
