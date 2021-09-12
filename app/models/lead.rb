class Lead < ApplicationRecord
    validates :project_name, presence: true
    validates :client_name, presence: true
    validates :client_address, presence: true
    validates :client_email, presence: true
    validates :client_contact, presence: true
    validates :platform_used, presence: true
    validates :test_type, presence: true
    has_many :comments, as: :commentable
    has_many :phases
    has_one :pro_ject
    belongs_to :user
    enum status: [:generate,:InProgress,:Completed]
end
