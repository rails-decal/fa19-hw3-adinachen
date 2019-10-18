require_relative '../services/weather_service'

class CitiesController < ApplicationController

  def view
    # if params.has_key?(:city) and $cities.key?(params[:city])
    #     @cities = Array.[](params[:city], $cities[params[:city].to_sym])
    # else
        @cities = $cities.to_a
    # end
  end

  def new

  end

  def create
    if !$cities.has_key?(params[:name].to_sym)
        City.new(params).save
    end
    redirect_to("/cities/view")
  end

  def updateget
  end

  def updatepost
    $cities[params[:name].to_sym].update(params)
    redirect_to("/cities/view")
  end

end