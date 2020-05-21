class ListingsController < ApplicationController

  load_and_authorize_resource
  before_action :authenticate_user!, except:[:redirect, :index, :show]

  def redirect
    # I created this redirect because I want my landing page to be my listings page however I wanted the url to depict that the user was in the listings section
    redirect_to listings_path
  end

  def index
    # This method creates a SQL request that eager loads  using "with_attached it returns all listing objects from my database instead of using "Listing.all which creats a new request for each object loaded, I've also used the ".inclues" method that creates two more queries: one to get all users and one to get all user profiles, this is necesary due to user and profile being seperate models. 
    @q = Listing.with_attached_picture.includes(user: [:profile]).ransack(params[:q])
    @listings = @q.result(distinct:true)
  end

  def show
    # This method creates a SQL request to return a single object from the database specified by using params and id
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = current_user.listings.new(listing_params)
    if @listing.save 
      redirect_to @listing
    else
      render "new"
    end
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def update
    @listing = Listing.find(params[:id])
    if @listing.user_id != current_user.id
      return redirect_to @listing
    end

    if @listing.update(listing_params)
      redirect_to @listing
    else
      render "edit"
    end
  end

  def destroy
    Listing.find(params[:id]).destroy
    redirect_to listings_url
  end

  private

  def listing_params
    if params[:listing][:sale_type] != 1
      params.require(:listing).permit(:title, :description, :price, :sale_type, :size, :image, :picture) 
    else
      params.require(:listing).permit(:title, :price, :description, :sale_type, :size, :image, :picture) 
    end
  end
end
