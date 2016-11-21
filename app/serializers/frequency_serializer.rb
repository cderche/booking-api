class FrequencySerializer < ActiveModel::Serializer
  attributes :id, :code, :percent
  attribute :t_name, key: :name
end
