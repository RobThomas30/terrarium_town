class Favourite < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  #Unfortunately ran out of time did not impliment "Favourites" feature.
end
