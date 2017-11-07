class HomeController < ApplicationController
  def index
    @wantedgames = Wantedgame.all
    @ownedgames = Ownedgame.all

    mywants = []
    allwants = []
    @wantedgames.each do |mw|
      if mw.user == current_user
        mywants << mw.game_name
      end
      allwants << mw.game_name
      allwants << mw.user_id

    end

    myhaves = []
    allhaves = []
    @ownedgames.each do |mh|
      if mh.user == current_user
        myhaves << mh.game_name
      end
      allhaves << mh.game_name
      allhaves << mh.user_id
    end

    match =  mywants & allwants && myhaves & allwants

  

  end
end
