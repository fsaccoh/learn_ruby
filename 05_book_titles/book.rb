
SMALL_WORDS = ['a', 'an', 'and', 'over', 'the', 'in', 'of']

def titles(s)
  t = s.split.map { |x|
    SMALL_WORDS.include?(x) ? x : x.capitalize
  }
  t.first.capitalize!
  t.join(' ')
end

class Book
  def title=(t)
    @title = titles(t)
  end

  def title
    @title
  end
end