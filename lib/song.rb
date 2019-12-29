class Song
  @@count = 0
  @@artists = []
  @@genres = []
  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre


    @@artists << artist
    @@genres << genre
    @@count += 1

  end

  def self.count
    @@count
  end

  def genres
    @@genres
  end

  def self.artists
    artists = []
    @@artists.each do |artist|
      artists << artist unless artists.include?(artist)
    end
    artists
  end

  def self.genres
    genres = []
    @@genres.each do |genre|
      genres << genre unless genres.include?(genre)
end
