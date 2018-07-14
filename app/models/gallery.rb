class Gallery
  @@all = []

  attr_reader :name, :city, :artist, :painting

  def initialize(name, city, artist, painting)
    @name = name
    @city = city
    @artist = artist
    @painting = painting
    @@all << self
  end

  def self.all # Get a list of all galleries
    @@all
  end

  def self.all_cities_with_gallery  # Get a list of all cities that have a gallery. A city should not appear more than once in the list.
    all.map do |gallery|
      gallery.city
    end
  end

  def all_artists_at_gallery# Get a list of artists that have paintings at a specific gallery
    all_artists = Gallery.all.collect do |gallery|
      if gallery == self
        gallery.artist
      end
    end
    all_artists.compact
  end

  # Get a list of the names of artists that have paintings at a specific gallery
  def all_artists_names_at_gallery
    self.all_artists_at_gallery.map do |artist|
      artist.name
    end
  end

  def combined_years_of_experience_of_all_artists_of_gallery# Get the combined years of experience of all artists at a specific gallery
    combined_years = 0
    self.all_artists_at_gallery.map do |artist|
      combined_years += artist.years_active
    end
    combined_years
  end
end
