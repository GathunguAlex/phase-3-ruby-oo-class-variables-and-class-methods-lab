class Song
    #defined and initialized name,artist,genre using attr_accesor
  attr_accessor :name, :artist, :genre
  #class variable that will track new songs
  @@count = 0
  #shows that we need the values in arrays
  @@genres = []
  @@artists = []


  def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
      @@count += 1
      @@genres << @genre
      @@artists << @artist
  end
  def self.count
      @@count
  end

  def self.genres
  #ensures no dublicates in song
      @@genres.uniq
  end

  def self.artists
    #ensures no dublicates with artists
      @@artists.uniq
  end

  def self.genre_count
      @@genres.tally
  end
  
  def self.artist_count
      @@artists.tally
  end
end