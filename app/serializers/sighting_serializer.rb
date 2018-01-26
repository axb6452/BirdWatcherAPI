class SightingSerializer < ActiveModel::Serializer
  attributes :id, :bird, :characteristics, :body_color
end
