class PricingParameterSerializer < ActiveModel::Serializer
  attributes :id, :price, :quantity_minimum, :quantity_maximum
  attribute :t_name, key: :name
end
