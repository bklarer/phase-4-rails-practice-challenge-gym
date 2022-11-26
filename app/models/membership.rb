class Membership < ApplicationRecord
    belongs_to :client
    belongs_to :gym

    validates :client_id, presence: true
    validates :gym_id, presence: true
end
