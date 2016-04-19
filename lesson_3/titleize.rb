
def titleize(title)
  modified_title = []
  title.split.each do |word|
    modified_title << word.capitalize
  end
  p modified_title.join(" ")
end

movie = "the night before christmas"

titleize(movie)

