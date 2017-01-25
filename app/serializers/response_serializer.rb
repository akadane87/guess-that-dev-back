class ResponseSerializer < ActiveModel::Serializer
  attributes :id, :response, :user_id, :picture_id
end
