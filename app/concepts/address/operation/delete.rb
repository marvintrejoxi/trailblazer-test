class Address::Operation::Delete < Trailblazer::Operation
  step Model(Address, :find_by)
  step :delete!

  def delete!(options, model:, **)
    model.destroy
  end
  
end
