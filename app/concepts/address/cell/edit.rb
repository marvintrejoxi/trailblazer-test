class Address::Cell::Edit < Trailblazer::Cell
  include ActionView::RecordIdentifier
  include ActionView::Helpers::FormOptionsHelper
  include SimpleForm::ActionViewExtensions::FormHelper
end
