class Address::Operation::Edit < Trailblazer::Operation
  step Model(Address, :find_by)
  step Contract::Build( constant: Address::Contract::Update )
end
