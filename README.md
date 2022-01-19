# Movies

| Param |  |
| -------- | ------ |
| Production | [https://saulo-movies.herokuapp.com/](https://saulo-movies.herokuapp.com/) |
| User | admin@test.com |
| Password | abc123 |



## Exec

```console
bin/rails s
```

## Tests

```console
bin/rails test
```

## Test in postman

[Movies.postman_collection.json](https://raw.githubusercontent.com/saulomendonca/movies/main/Movies.postman_collection.json) 

## The app don't have an endpoint o create user, so you need to create in rails console

```console
bin/rails c
User.create!(name: "admin", email: "admin@test.com", password: 'abc123')
```


## Endpoints

| URL / ENDPOINT| VERB     | DESCRIPTION                      | PUBLIC? |
| :--------     | :------- | :--------------------------------|---------|
| `/auth/login` | POST     | generate token                   |  YES    |
| `/people`     | POST     | Create a person                  |  NO     |
| `/people`     | GET      | Return all people                |  YES    |
| `/people/id`  | GET      | Return person                    |  YES    |
| `/people/id`  | PUT      | Update person                    |  NO     |
| `/people/id`  | DELETE   | Delete person                    |  NO     |
| `/movies`     | POST     | Create a movie                   |  NO     |
| `/movies`     | GET      | Return all movies                |  YES    |
| `/movies/id`  | GET      | Return movie                     |  YES    |
| `/movies/id`  | PUT      | Update movie                     |  NO     |
| `/movies/id`  | DELETE   | Delete movie                     |  NO     |
| `/movies/movie_id/roles`     | POST     | Create a role     |  NO     |
| `/movies/movie_id/roles`     | GET      | Return all roles  |  NO     |
| `/movies/movie_id/roles/id`  | GET      | Return role       |  NO     |
| `/movies/movie_id/roles/id`  | PUT      | Update role       |  NO     |
| `/movies/movie_id/roles/id`  | DELETE   | Delete role       |  NO     |

## Technologies and GEMS

To keep the project simple, I use the standard rails GEM
- DataBase: Postgresql
- Test: Minitest
- Authentication: GEM bcrypt: used to password authentication
- Authentication: GEM jwt: Used to generate and validate the token
- GEM: jbuilder: Used to build JSONs




