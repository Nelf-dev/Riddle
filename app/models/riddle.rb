class Riddle < ApplicationRecord
    has_many :scores
    belongs_to :user, :optional => true
end
