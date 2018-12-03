class Api::V1::Items::RandomController < ApplicationController

  def show
    offset = rand(Item.count)
    render json: Item.find(offset)
  end

end
