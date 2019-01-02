class ScreenwritersController < ApplicationController
  before_action :set_screenwriter, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]
  before_action :authorize_user, only: [:destroy, :edit, :update]
  # GET /screenwriters
  # GET /screenwriters.json
  def index
    @screenwriters = Screenwriter.all
  end

  # GET /screenwriters/1
  # GET /screenwriters/1.json
  def show
  end

  # GET /screenwriters/new
  def new
    @screenwriter = Screenwriter.new
  end

  # GET /screenwriters/1/edit
  def edit
  end

  # POST /screenwriters
  # POST /screenwriters.json
  def create
    @screenwriter = Screenwriter.new(screenwriter_params)
    @screenwriter.user = current_user
    respond_to do |format|
      if @screenwriter.save
        format.html { redirect_to @screenwriter, notice: 'Screenwriter was successfully created.' }
        format.json { render :show, status: :created, location: @screenwriter }
      else
        format.html { render :new }
        format.json { render json: @screenwriter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /screenwriters/1
  # PATCH/PUT /screenwriters/1.json
  def update
    respond_to do |format|
      if @screenwriter.update(screenwriter_params) || current_user&.admin?
        format.html { redirect_to @screenwriter, notice: 'Screenwriter was successfully updated.' }
        format.json { render :show, status: :ok, location: @screenwriter }
      else
        format.html { render :edit }
        format.json { render json: @screenwriter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /screenwriters/1
  # DELETE /screenwriters/1.json
  def destroy
    @screenwriter.destroy
    respond_to do |format|
      format.html { redirect_to screenwriters_url, notice: 'Screenwriter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def authorize_user
      if @screenwriter.user != current_user && !current_user&.admin?
        flash[:alert] = "You are not allowed to do this."
        redirect_to screenwriters_path
        return false
      end
    true
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_screenwriter
      @screenwriter = Screenwriter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def screenwriter_params
      params.require(:screenwriter).permit(:name)
    end
end
