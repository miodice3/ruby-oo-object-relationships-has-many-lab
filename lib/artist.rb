require 'pry'

class Artist

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song_name)
         song_name.artist = self
    end

    def add_song_by_name(song_name)
        test = Song.new(song_name)
        test.artist = self
    end

    def self.song_count
        Song.all.count
    end
end