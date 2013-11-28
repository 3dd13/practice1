object false

child @rares, object_root: false do

  attributes :rare_family, :rare_name, :id, :longitude, :latitude, :verified

  node :href do |rare|
    rare_url(rare)
  end

  node :links do |rare|
  {
  posts: "Put nested has many urls here. #{rare.rare_name}"
  }
  end

end
