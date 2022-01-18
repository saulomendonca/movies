json.array! @movies do |movie|
  json.id movie.id
  json.title movie.title
  json.release_year movie.release_year_in_roman
end