class PromotionsController < ApplicationController
  def index
    @promotions = Promotion.all
  end

  def show
    @promotion = Promotion.find(params[:id])


  end

  def new
    @promotion = Promotion.new
  end

  def create
  @promotion = current_user.promotions.build(params[:promotion])
  if @promotion.save
    flash[:notice] = "Promotion was saved."
    redirect_to @promotion
  else
    flash[:error] = "There was an error saving the promotion. Please try again."
    render :new
  end
end

  def edit
    @promotion = Promotion.find(params[:id])
  end

  def update
    @promotion = Promotion.find(params[:id])
    if @promotion.update_attributes(params[:post])
      flash[:notice] = "Promotion was updated."
      redirect_to @promotion
    else
      flash[:error] = "There was an error saving the promotion. Please try again."
      render :new
    end
  end
end
