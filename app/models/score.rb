class Score < ApplicationRecord
    belongs_to :riddle, :optional => true
    belongs_to :user, :optional => true
end
