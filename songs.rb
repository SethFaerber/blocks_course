
class Song
  attr_reader :name, :artist, :duration

  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
  end

  def play
    puts "Playing '#{name}' by #{artist} (#{duration} mins)..."
  end
end

song1 = Song.new(:wonderwall, :oasis, 3.5)
song2 = Song.new(:zombie, :cranberries, 3.2)
song3 = Song.new(:my_own_worst_enemy, :lit, 2.8)
song4 = Song.new(:champaign_supernova, :oasis, 3.5)

class Playlist
  include Enumerable

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def shuffle
    @songs.shuffle
  end

  def each
    @songs.each { |song| yield song }
  end

  def shuffle_play
    @songs.shuffle.each { |song| song.play }
  end

  def play_songs
    each { |song| song.play }
  end
end

playlist = Playlist.new("Zombies")

# 12.times { playlist.add_song(song2) }
# 3.times { playlist.add_song(song1) }
# 6.times { playlist.add_song(song3) }
# pp playlist.shuffle
# playlist.shuffle.each { |song| song.play }
# playlist.shuffle_play

playlist.add_song(song1)
playlist.add_song(song2)
playlist.add_song(song3)
playlist.add_song(song4)


# pp playlist
#
cran_songs = playlist.select { |song| song.name == :zombie }
pp cran_songs

oasis_songs = playlist.select { |song| song.artist == :oasis}
pp "---------------- #{oasis_songs}"