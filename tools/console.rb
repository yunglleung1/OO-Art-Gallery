require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

artist1 = Artist.new("Luke", 10)
artist2 = Artist.new("John", 100)
painting1 = Painting.new("Beauty", "abstract")
painting2 = Painting.new("Ugly", "impressionist")
gallery1 = Gallery.new("Glamorous Gallery", "New York City", artist1, painting1)
gallery2 = Gallery.new("Horrific Gallery", "Boston", artist2, painting2)

binding.pry
