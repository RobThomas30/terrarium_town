class ListingsController < ApplicationController

  load_and_authorize_resource
  before_action :authenticate_user!, except:[:redirect, :index, :show]

  def redirect
    redirect_to listings_path
  end

  def index
    @q = Listing.ransack(params[:q])
    @listings = @q.result(distinct:true)
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

  def create
    new_listing = current_user.listings.create(listing_params)
    if new_listing.save 
      redirect_to new_listing
    else
      render "new"
    end
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def update
    updated_listing = Listing.find(params[:id])
    if updated_listing.user != current_user
      return redirect_to updated_listing
    end
    updated_listing.update(listing_params)
    if updated_listing.save
      redirect_to updated_listing
    else
      re_render "edit"
    end
  end

  def destroy
    Listing.find(params[:id]).destroy
    redirect_to listings_url
  end

  private

  def listing_params
    if params[:listing][:sale_type] != 1
      params.require(:listing).permit(:title, :description, :sale_type, :size, :image, :picture) 
    else
      params.require(:listing).permit(:title, :price, :description, :sale_type, :size, :image, :picture) 
    end
  end
end
