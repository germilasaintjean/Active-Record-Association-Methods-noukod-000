class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    genre = Genre.find(1)
  # genre = artist.genre.first
  # genre
  # song.save
  #a.first_song == b.artist.first_name

     #return the genre of the artist's first saved song
  end

  def song_count
    songs = Song.count
    #return the number of songs associated with the artist
  end

  def genre_count
    genres = Genre.count
    #return the number of genres associated with the artist
  end
end
