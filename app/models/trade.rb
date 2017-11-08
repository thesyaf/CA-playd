class Trade < ApplicationRecord
  belongs_to :ownedgame
  belongs_to :wantedgame
end
