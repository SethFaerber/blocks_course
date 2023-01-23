
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

class Playlist
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
end

playlist = Playlist.new("Zombies")

12.times { playlist.add_song(song2) }
3.times { playlist.add_song(song1) }
6.times { playlist.add_song(song3) }

pp playlist.shuffle

playlist.shuffle.each { |song| song.play }

playlist.shuffle_play