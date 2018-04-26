require_relative("../db/sql_runner")

class Movie
  attr_reader :id, :title, :genre, :rating

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @genre = options['genre']
    @rating = options['rating'].to_i
  end 

end
