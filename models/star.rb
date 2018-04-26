require_relative("../db/sql_runner")

class Star
attr_reader :id, :first_name, :last_name

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @first_name = options['first_name']
    @last_name = options['last_name']
  end

  def save()
    sql = 'INSERT INTO stars (first_name, last_name)
    VALUES ($1, $2) RETURNING id'
    values = [@first_name, @last_name]
    star = SqlRunner.run(sql, values)[0]
    @id  =  star['id'].to_i
  end


  def self.all()
    sql = 'SELECT * FROM stars'
    star_hashes = SqlRunner.run(sql)
    stars = star_hashes.map { |star| Star.new(star)}
    return stars
  end




end
