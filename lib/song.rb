require "pry" 

class Song
    attr_accessor :name, :artist, :genre 
    @@count = 0 
    @@genres = []
    @@artists = []   
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @@artists << artist 
        @genre = genre
        @@genres << genre 
        @@count += 1  
    end 
    
    def self.count
        @@count 
    end 

    def self.genres
        @@genres.uniq 
    end 

    def self.artists
        @@artists.uniq  
    end 

    def self.genre_count 
        genre_count = {} 
        @@genres.each do |gen|
        if genre_count[gen] 
            genre_count[gen] +=1 
        else 
            genre_count[gen] = 1 
        end   
    end 
    genre_count  
    end 

    def self.artist_count
        artist_count = {} 
        @@artists.each do |art|
        if artist_count[art] 
            artist_count[art] +=1 
        else 
            artist_count[art] = 1 
        end   
    end 
    artist_count 
    end 

    # def artist_count
    #     @@count.map   
    # end 
    
end 

