class Song
	attr_accessor :name, :artist, :genre

	@@count = 0
	@@artists = []
	@@genres = []

	def initialize(name,artist,genre)
		@@count += 1
		@name = name
		@artist = artist
		@genre = genre
		@@artists << @artist
		@@genres << @genre
end

def self.count
	@@count
end

def self.artists
	@@artists.uniq
end

def self.genres
	@@genres.uniq
end

def self.genre_count
	# name_count(@@genres)
  new_arr={}
  count = 0
@@genres.each do |name|
  @@genres.each do |name2|
    if name == name2
      count += 1
    end
  end
  new_arr[name]=count
  count = 0
end
new_arr
end

def self.artist_count
  new_arr={}
  count = 0
@@artists.each do |name|
  @@artists.each do |name2|
    if name == name2
      count += 1
    end
  end
  new_arr[name]=count
  count = 0
end
new_arr
end




end
