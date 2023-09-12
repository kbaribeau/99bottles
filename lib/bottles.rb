class BottlesSong
  def verse(bottle_count)
    if bottle_count == 1
      <<~END
        1 bottle of beer on the wall, 1 bottle of beer.
        Take it down and pass it around, no more bottles of beer on the wall.
      END
    else
      <<~END
        #{bottle_count} bottles of beer on the wall, #{bottle_count} bottles of beer.
        Take one down and pass it around, #{bottle_count - 1} bottles of beer on the wall.
      END
    end
  end
end
