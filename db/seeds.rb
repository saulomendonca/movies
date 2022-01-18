# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


matrix = Movie.create({ title: "The Matrix", release_year: 1999 })

matrix1 = Person.create({first_name: "Lana", last_name: "Wachowski"})
matrix2 = Person.create({first_name: "Lilly", last_name: "Wachowski"})
matrix3 = Person.create({first_name: "Keanu", last_name: "Reeves"})
matrix4 = Person.create({first_name: "Laurence", last_name: "Fishburne"})
matrix5 = Person.create({first_name: "Carrie-Anne", last_name: "Moss"})

Role.create(person: matrix1, movie: matrix, role_type: "director")
Role.create(person: matrix2, movie: matrix, role_type: "director")
Role.create(person: matrix3, movie: matrix, role_type: "casting")
Role.create(person: matrix4, movie: matrix, role_type: "casting")
Role.create(person: matrix5, movie: matrix, role_type: "casting")


inception = Movie.create({ title: "Inception", release_year: 2010 })

inception1 = Person.create({first_name: "Christopher", last_name: "Nolan"})
inception2 = Person.create({first_name: "Leonardo", last_name: "DiCaprio"})
inception3 = Person.create({first_name: "Joseph", last_name: "Gordon-Levitt "})
inception4 = Person.create({first_name: "Elliot", last_name: "Page"})

Role.create(person: inception1, movie: inception, role_type: "director")
Role.create(person: inception2, movie: inception, role_type: "casting")
Role.create(person: inception3, movie: inception, role_type: "casting")
Role.create(person: inception4, movie: inception, role_type: "casting")


