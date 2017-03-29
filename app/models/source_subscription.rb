class SourceSubscription < ActiveRecord::Base
  validates :user_id, 
            :source_id, 
            presence: true

  validates :source_id, 
            uniqueness: { scope: :user_id }

  belongs_to :user
  belongs_to :source
end