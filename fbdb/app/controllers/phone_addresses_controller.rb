class PhoneAddressesController < ApplicationController
  layout "admin"
  active_scaffold :phone_address do |config|
    config.columns = [:ClientAddress, :town, :ClientZIP, :Telephone]
    config.columns[:ClientAddress].label = "Street Address"
    config.columns[:town].form_ui = :select
    config.columns[:ClientZIP].label = "ZIP Code"
  end
end
