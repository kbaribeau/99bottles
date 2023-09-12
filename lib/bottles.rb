class BottlesSong
  VERSES = {
    0 => "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n",
    1 => "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n",
    2 => "2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n",
  }

  def sing
    verses(99, 0)
  end

  def verses(high_count, low_count)
    (low_count..high_count).map do |bottle_count|
      verse(bottle_count)
    end.reverse.concat(['']).join("\n")
  end

  def verse(bottle_count)
    VERSES.fetch(bottle_count, generic_verse(bottle_count))
  end

  private

  def generic_verse(bottle_count)
    <<~END
      #{bottle_count} bottles of beer on the wall, #{bottle_count} bottles of beer.
      Take one down and pass it around, #{bottle_count - 1} bottles of beer on the wall.
    END
  end
end
