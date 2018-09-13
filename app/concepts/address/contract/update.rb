require "reform"
require "reform/form/dry"

class Address::Contract::Update < Reform::Form
  include Reform::Form::Dry

  property :name
  property :location
  property :country_id
  property :state_id
  property :phone
  property :phone_2
  property :id

  validation do
    required(:name).filled
  end

end
