class BarsController < ApplicationController
  def show
  end

  def edit
  end

  def update
  end

  def create
  end

  def index
    # @bars = Bar.all
    # uri = HTTParty.get"http://api.yelp.com/v2/business/yelp-san-francisco"
    # @bar = JSON.parse(uri.body)
  end

  def new
  end

  def destroy
  end

  def search
    parameters = { term: params[:term], limit: 16}
    render json: Yelp.client.search('Santa Monica', parameters)
  end

end
