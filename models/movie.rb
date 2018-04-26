require_relative("../db/sql_runner")

class Movie
  attr_reader :id, :title, :genre, :rating

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @genre = options['genre']
    @rating = options['rating'].to_i
  end

  def save()
    sql = 'INSERT INTO movies (title, genre, rating)
    VALUES ($1, $2, $3) RETURNING id'
    values = [@title, @genre, @rating]
    movie = SqlRunner.run(sql, values)[0]
    @id  =  movie['id'].to_i
  end

end
