class VoteSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :position, :statement, :proposal_id, :created_at

  has_one :author, serializer: UserSerializer, root: 'users'

  def proposal_id
    object.motion_id
  end
end