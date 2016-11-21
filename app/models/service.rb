class Service < ApplicationRecord
  include Translatable
  
  has_and_belongs_to_many :extras
  has_and_belongs_to_many :pricing_parameters
end
