class ClicksController < ApplicationController
  def index
    @clicks = Click.all
    render json: @clicks
  end

  def create
   click =  Click.new(click_params)
   #what to return
   if click.save
      render json: click, status: :created
   else 
    render json: {error: "an error occured"}
   end
  end

  private
  #Stron Parameters
  def click_params
    params.require(:click).permit(:product_id, :affiliate_id)
  end
end
