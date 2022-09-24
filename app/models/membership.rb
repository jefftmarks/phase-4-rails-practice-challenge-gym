class Membership < ApplicationRecord
	belongs_to :gym
	belongs_to :client

	validates :charge, :gym_id, :client_id, presence: true
	validates :client, uniqueness: { scope: :gym }
end