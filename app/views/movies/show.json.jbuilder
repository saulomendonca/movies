json.(@movie, :id, :title)
json.release_year @movie.release_year_in_roman

json.people @movie.roles do |role| 
  json.person role.person, :id, :first_name, :last_name
  json.role role.role_type
end