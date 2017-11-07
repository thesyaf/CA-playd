class WantedgamesController < ApplicationController
  before_action :set_wantedgame, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  # GET /wantedgames
  # GET /wantedgames.json
  def index
    @wantedgames = Wantedgame.all
  end

  # GET /wantedgames/1
  # GET /wantedgames/1.json
  def show
  end

  # GET /wantedgames/new
  def new
    @wantedgame = Wantedgame.new
  end

  # GET /wantedgames/1/edit
  def edit
  end

  # POST /wantedgames
  # POST /wantedgames.json
  def create
    @wantedgame = Wantedgame.new(wantedgame_params)
    @wantedgame.user = current_user


    respond_to do |format|
      if @wantedgame.save
        format.html { redirect_to @wantedgame, notice: 'Wantedgame was successfully created.' }
        format.json { render :show, status: :created, location: @wantedgame }
      else
        format.html { render :new }
        format.json { render json: @wantedgame.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wantedgames/1
  # PATCH/PUT /wantedgames/1.json
  def update
    respond_to do |format|
      if @wantedgame.update(wantedgame_params)
        format.html { redirect_to @wantedgame, notice: 'Wantedgame was successfully updated.' }
        format.json { render :show, status: :ok, location: @wantedgame }
      else
        format.html { render :edit }
        format.json { render json: @wantedgame.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wantedgames/1
  # DELETE /wantedgames/1.json
  def destroy
    @wantedgame.destroy
    respond_to do |format|
      format.html { redirect_to wantedgames_url, notice: 'Wantedgame was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wantedgame
      @wantedgame = Wantedgame.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wantedgame_params
      params.require(:wantedgame).permit(:game_api_id, :game_name, :game_image, :game_owned, :user_id)
    end
end
