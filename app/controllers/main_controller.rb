require_relative '../services/weather_service'

class MainController < ApplicationController

  def index
    # Uncomment and pass a parameter to the get function
    @w = WeatherService.get(params[:city])
    if @w
      @city = @w[:city].capitalize
      @temperature = (9.0/5) * (@w[:temperature] - 273) + 32
    end
    @name = params[:name]
    if @name
      @name = @name.capitalize
    end
  end

  city = City.new(
    name: "Berkeley",
    description: "light clouds",
    temperature: 76.5,
    population: 2134567,
    landmark: "Oski"
  )
  
  city.save

  city = City.new(
    name: "Fremont",
    description: "clear skies",
    temperature: 80.2,
    population: 123485946,
    landmark: "Vikings"
  )
  
  city.save

end
