json.(@person, :id, :first_name, :last_name, :aliases)

json.movies @person.roles do |role| 
  json.movie do
    json.(role.movie, :id, :title)
  end
  json.role role.role_type
end
