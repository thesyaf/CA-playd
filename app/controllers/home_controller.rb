class HomeController < ApplicationController
  def index
    @wantedgames = Wantedgame.all
    @ownedgames = Ownedgame.all

  end
end
