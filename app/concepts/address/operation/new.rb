class Address::Operation::New < Trailblazer::Operation
  step Model(Address, :new)
  step Contract::Build( constant: Address::Contract::Create )
end
