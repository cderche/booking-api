class ExtraSerializer < ActiveModel::Serializer
  attributes :id, :price, :quantity_based
  attribute :t_name, key: :name
end
