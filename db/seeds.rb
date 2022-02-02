# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

t1 = Theater.create(name: "Century 16", city: "Salt Lake City", state: "UT")
t2 = Theater.create(name: "Regal Crossroads", city: "Taylorsville", state: "UT")
t3 = Theater.create(name: "Megaplex Theatres at Jordan Commons", city: "Sandy", state: "UT")

t1.movies.create(name: "Jaws", description: "When a killer shark unleases chaos on a community, its up to the locals to hunt it down.", lead_actor: "Roy Scheider")
t1.movies.create(name: "Jurassic Park", description: "Dinosaurs escape a theme park and cause chaos.", lead_actor: "Sam Neill")
t2.movies.create(name: "Jaws", description: "When a killer shark unleases chaos on a community, its up to the locals to hunt it down.", lead_actor: "Roy Scheider")
t2.movies.create(name: "The Godfather", description: "The story of the Corleones family.", lead_actor: "Al Pacino")
t2.movies.create(name: "Titanic", description: "Love story on an ill-fated northern ocean cruise.", lead_actor: "Leonardo DiCaprio")
t3.movies.create(name: "Jurassic Park", description: "Dinosaurs escape a theme park and cause chaos.", lead_actor: "Sam Neill")
t3.movies.create(name: "Titanic", description: "Love story on an ill-fated northern ocean cruise.", lead_actor: "Leonardo DiCaprio")
t3.movies.create(name: "Toy Story", description: "The story of Andy's toys, Woody and Buzz.", lead_actor: "Tom Hanks")
