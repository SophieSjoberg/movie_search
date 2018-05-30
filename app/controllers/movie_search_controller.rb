class MovieSearchController < ApplicationController
  def index
  end

  def search
    if request.post?
      api_key = Rails.application.credentials.omdb[:api_key]
      query = params[:query][:title]
      response = Net::HTTP.get("www.omdbapi.com", "/?apikey=#{api_key}&s=#{query}")
      @movies = JSON.parse(response)
    end
    render :index
  end
end
