class FlatsController < ApplicationController
  before_action :fetch_flats

  def list
  end

  def show
    @flat = @flats.find { |flat| flat[:id] == params[:id].to_i }
  end

  private

  def fetch_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(RestClient.get(url).body, symbolize_names: true)
  end
end
