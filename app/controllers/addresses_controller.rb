class AddressesController < ApplicationController

  helper_method :collection
  def new
    run Address::Operation::New
    render cell(Address::Cell::New, @form), layout: false
  end

  def create
    params_addres =  ActiveSupport::HashWithIndifferentAccess.new(params[:address].permit!) || {}
    operation = Address::Operation::Create.(params: { data: params_addres })
    unless operation.success?
      # render :new
    else
      redirect_to addresses_path
    end
  end

  def edit
    run Address::Operation::Edit
    render cell(Address::Cell::Edit, @form), layout: false
  end

  def update
    params_addres =  ActiveSupport::HashWithIndifferentAccess.new(params[:address].permit!) || {}
    operation = Address::Operation::Update.(params: { id: params[:id], data: params_addres})
    unless operation.success?
      # render :edit
    else
      redirect_to addresses_path
    end
  end

  def destroy
    run Address::Operation::Delete

    redirect_to addresses_path
  end


  private

  def collection
    @collection ||= Address.all
  end
end
