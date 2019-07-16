class PubsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  
  def index
    @pubs = Pub.all
  end

  def new
    @pub = Pub.new
  end

  def create
    @pub = Pub.new(pub_params)

    if @pub.save
      redirect_to pubs_path
    else
      render :new
    end
  end

  private

  def pub_params
    params.require(:pub).permit(:name, :address, :district, :description, :photo)
  end
end
