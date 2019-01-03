class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :find_film
  before_action :logged_in?, only: [:create]
  before_action :authenticate_user, only: [:destroy, :edit, :update]

  def edit
  end


  def create
    @review = Review.new(review_params)
    @review.film = @film
    @review.user = current_user
    if @review.save
      redirect_to film_path(@film)
    else
      render 'films/show'
    end
  end


  def update
    if @review.update(review_params)
     redirect_to film_path(@film)
   else
     render 'edit'
   end
  end


  def destroy
    @review.destroy
    redirect_to film_path(@film)
  end

  private

    def authenticate_user
      if @review.user != current_user && !current_user&.admin?
        flash[:alert] = "You are not allowed to do this."
        redirect_to film_path(@film)
        return false
      end
    true
    end

    def logged_in?
      current_user
    end

    def find_film
      @film = Film.find(params[:film_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:author, :comment, :rate, :film_id)
    end
end
