class TodoSerializer < ActiveModel::Serializer
  attributes :id, :text, :isCompleted, :project_id
end
