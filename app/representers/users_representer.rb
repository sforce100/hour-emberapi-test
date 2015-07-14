# require 'paginated_representer'

module UsersRepresenter
  include Roar::JSON::JSONAPI
  include Grape::Roar::Representer

  type :users

  property :uuid, as: :id
  property :username
end
