class ItemsController < ApplicationController

  def show
    @item      = Item.find(params[:id])
    # @locations = METHOD HERE
  end

end
