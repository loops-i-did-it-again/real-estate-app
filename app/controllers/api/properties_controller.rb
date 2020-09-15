class Api::PropertiesController < ApplicationController
  
  def create
    coordinates = Geocoder.coordinates(params[:address])
    @property = Property.new(
      description: params[:description],
      year_built: params[:year_built],
      square_feet: params[:square_feet],
      bedrooms: params[:bedrooms],
      bathrooms: params[:bathrooms],
      availability: params[:availability],
      price: params[:price],
      latitude: coordinates[0],
      longitude: coordinates[1]
    )
    @property.save
    render "show.json.jb"
  end

end
