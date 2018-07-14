class Painting
  @@all = []

  attr_reader :title, :style

  def initialize(title, style)#Each painting has a style ("impressionist", "abstract", "finger painting"), and a title
    @title = title
    @style = style
    @@all << self
  end

  def self.all# Get a list of all paintings
    @@all
  end

  def self.all_painting_styles# Get a list of all painting styles (a style should not appear more than once in the list)
    all.map do |painting|
      painting.style
    end
  end
end
