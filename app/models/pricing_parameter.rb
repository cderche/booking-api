class PricingParameter < ApplicationRecord
  include Translatable
  has_and_belongs_to_many :services
end
