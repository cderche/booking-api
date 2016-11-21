class V1::FrequenciesController < ApplicationController

  def index
    render json: Frequency.all
  end
  
end
