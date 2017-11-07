class OwnedgamesController < ApplicationController
  before_action :set_ownedgame, only: [:show, :edit, :update, :destroy]

  # GET /ownedgames
  # GET /ownedgames.json
  def index
    @ownedgames = Ownedgame.all
  end

  # GET /ownedgames/1
  # GET /ownedgames/1.json
  def show
  end

  # GET /ownedgames/new
  def new
    @ownedgame = Ownedgame.new
  end

  # GET /ownedgames/1/edit
  def edit
  end

  # POST /ownedgames
  # POST /ownedgames.json
  def create
    @ownedgame = Ownedgame.new(ownedgame_params)
    @ownedgame.user = current_user

    respond_to do |format|
      if @ownedgame.save
        format.html { redirect_to games_path, notice: 'Ownedgame was successfully created.' }
      else
        format.html { redirect_to games_path, notice: "Errors creating Ownedgame created: #{@ownedgame.errors}" }
      end
    end
  end

  # PATCH/PUT /ownedgames/1
  # PATCH/PUT /ownedgames/1.json
  def update
    respond_to do |format|
      if @ownedgame.update(ownedgame_params)
        format.html { redirect_to @ownedgame, notice: 'Ownedgame was successfully updated.' }
        format.json { render :show, status: :ok, location: @ownedgame }
      else
        format.html { render :edit }
        format.json { render json: @ownedgame.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ownedgames/1
  # DELETE /ownedgames/1.json
  def destroy
    @ownedgame.destroy
    respond_to do |format|
      format.html { redirect_to ownedgames_url, notice: 'Ownedgame was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ownedgame
      @ownedgame = Ownedgame.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ownedgame_params
      params.require(:ownedgame).permit(
        :game_api_id,
        :game_name,
        :game_image,
        :game_owned
      )
    end
end
