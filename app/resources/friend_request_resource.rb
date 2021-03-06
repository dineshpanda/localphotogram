class FriendRequestResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :sender_id, :integer
  attribute :recipient_id, :integer
  attribute :status, :integer_enum, allow: FriendRequest.statuses.keys

  # Direct associations

  belongs_to :accepted_sender,
             resource: UserResource,
             foreign_key: :sender_id

  belongs_to :recipient,
             resource: UserResource

  belongs_to :sender,
             resource: UserResource

  # Indirect associations
end
