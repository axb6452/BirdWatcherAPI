class SightingSerializer < ActiveModel::Serializer
  attributes :id, :bird, :characteristics, :body_color, :user_id, :created_at, :updated_at
end
