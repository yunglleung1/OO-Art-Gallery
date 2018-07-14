class Artist
  @@all = []
  attr_reader :name, :years_active

  def initialize(name, years_active)#Each artist has a name and an amount of years active
    @name = name
    @years_active = years_active
    @@all << self
  end

  def self.all # Get a list of all artists
    @@all
  end

  def all_galleries_of_artist # Get a list of all the galleries that a specific artist has paintings in
    Gallery.all.select do |gallery|
      gallery.artist == self
    end
  end

  def all_paintings_of_artist # Get a list of all the paintings by a specific artists
    self.all_galleries_of_artist.map do |gallery|
      gallery.painting
    end
  end

  def all_cities_of_artist# Get a list of all cities that contain galleries that a specific artist has paintings in
    self.all_galleries_of_artist.map do |gallery|
      gallery.city
    end
  end

  def self.average_years_experience_of_all_artists# Find the average years of experience of all artists
    total_years = 0
    number_of_artists = all.length
    all.each do |artist|
      total_years += artist.years_active
    end
    average = total_years / number_of_artists
  end
end
