class Restaurant
  # TODO: add relevant accessors if necessary
  attr_reader :city

  def initialize(city, name)
    @city = city
    @name = name
    @ratings = []
  end

  # TODO: implement .filter_by_city and #rate methods

  def rate(new_rate)
    @ratings << new_rate
  end

  def average_rating
    @ratings.sum / @ratings.length
  end

  def self.filter_by_city(restaurants, city)
    restaurants.select { |restaurant| restaurant.city == city }
  end
end

jules_verne = Restaurant.new("Paris", "Jules Vernes")
bluebird = Restaurant.new("london", "Bluebird")
daniel = Restaurant.new("new york", "Daniel")

restaurants = [jules_verne, bluebird, daniel]

Restaurant.filter_by_city(restaurants, "London")

p jules_verne
  .city
