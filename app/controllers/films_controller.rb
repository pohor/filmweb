class FilmsController < ApplicationController
  before_action :set_film, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]
  before_action :authorize_film, only: [:destroy, :edit, :update]
  # GET /films
  # GET /films.json
  def index
    @films = Film.all
  end

  # GET /films/1
  # GET /films/1.json
  def show
    @review = Review.new
  end

  # GET /films/new
  def new
    @film = Film.new
  end

  # GET /films/1/edit
  def edit
  end

  # POST /films
  # POST /films.json
  def create
    @film = Film.new(film_params)
    @film.user = current_user if current_user
    respond_to do |format|
      if @film.save
        format.html { redirect_to @film, notice: 'Film was successfully created.' }
        format.json { render :show, status: :created, location: @film }
      else
        format.html { render :new }
        format.json { render json: @film.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /films/1
  # PATCH/PUT /films/1.json
  def update
    respond_to do |format|
      if @film.update(film_params) || current_user.admin?
        format.html { redirect_to @film, notice: 'Film was successfully updated.' }
        format.json { render :show, status: :ok, location: @film }
      else
        format.html { render :edit }
        format.json { render json: @film.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /films/1
  # DELETE /films/1.json
  def destroy
    @film.destroy
    respond_to do |format|
      format.html { redirect_to films_url, notice: 'Film was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def authorize_film
      if @film.user != current_user && !current_user&.admin?
        flash[:alert] = "You are not allowed to do this."
        redirect_to films_path
        return false
      end
    true
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_film
      @film = Film.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def film_params
      params.require(:film).permit(:title, :premiere, :duration, :description, genre_ids: [], director_ids: [], screenwriter_ids: [])
    end
end
