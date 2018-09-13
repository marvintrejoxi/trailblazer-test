class Address::Operation::Create < Trailblazer::Operation
  step Model(Address, :new)
  step Contract::Build( constant: Address::Contract::Create )
  step Contract::Validate( key: :data )
  step Contract::Persist( )
end
