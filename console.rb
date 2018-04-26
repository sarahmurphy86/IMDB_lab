require_relative('models/casting')
require_relative('models/movie')
require_relative('models/star')
require( 'pry-byebug')

star1 =Star.new({
    'first_name' => 'Ryan',
    'last_name' => 'Gosling'})
star1.save()

star2 =Star.new({
    'first_name' => 'Brad',
    'last_name' => 'Pitt'
    })
star2.save()

movie1 =Movie.new({
    'title' => 'Drive',
    'genre' => 'Thriller',
    'rating' => 5
    })
movie1.save()

movie2 =Movie.new({
    'title' => 'Burn after Reading',
    'genre' => 'Comedy',
    'rating' => 4
    })
movie2.save()

casting1 = Casting.new({
    'star_id' => star1.id, '
    movie_id' => movie1.id
    })
casting1.save()

casting2 = Casting.new({
    'star_id' => star2.id, '
    movie_id' => movie2.id
    })
casting1.save()

binding.pry
nil
