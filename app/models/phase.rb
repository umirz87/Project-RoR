class Phase < ApplicationRecord
    belongs_to :lead
    has_many :comments, as: :commentable
    has_many :user_phases, dependent: :destroy
    has_many :users, through: :user_phases
    enum status: [:created,:InProgress,:Completed]
end
