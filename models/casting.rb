require_relative("../db/sql_runner")

class Casting
attr_reader :id, :movie_id, :star_id

def initialize(options)
  @id = options['id'].to_i if options['id']
  @movie_id = options['movie_id'].to_i
  @star_id = options['star_id'].to_i
end

##INSTANCE
  def save()
    sql = 'INSERT INTO castings (star_id, movie_id)
    VALUES ($1, $2) RETURNING id'
    values = [@movie_id, @star_id]
    casting = SqlRunner.run(sql, values)[0]
    @id  =  casting['id'].to_i
  end

###METHOD
  

end
