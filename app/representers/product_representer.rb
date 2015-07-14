module UserRepresenter
  include Roar::JSON::JSONAPI
  include Grape::Roar::Representer

  type :products

  property :id
  property :name
  property :description
end
