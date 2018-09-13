class Address::Operation::Update < Trailblazer::Operation
  step Model(Address, :find_by)
  step Contract::Build( constant: Address::Contract::Update )
  step Contract::Validate( key: :data )
  step Contract::Persist( )
end
