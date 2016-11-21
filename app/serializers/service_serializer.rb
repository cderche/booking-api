class ServiceSerializer < ActiveModel::Serializer
  attributes :id, :code, :price, :hourly, :resource_minimum, :resource_maximum, :hours_minimum, :hours_maximum
  attribute :t_name, key: :name

  has_many :pricing_parameters
  has_many :extras
end
