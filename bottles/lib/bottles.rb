class Bottles
  def song
    verses(99,0)
  end

  def verses(num_from, num_to)
    num_from.downto(num_to).map { |num| verse(num) }.join("\n")
  end

  def verse(num)
    case num
    when 0
      "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
    when 1
      "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
    else
      "#{num} bottles of beer on the wall, #{num} bottles of beer.\nTake one down and pass it around, #{num - 1} #{container(num-1)} of beer on the wall.\n"
    end
  end

  def container(amount)
    if amount == 1
      'bottle'
    else
      'bottles'
    end
  end
end
