class PhoneAddressesController < ApplicationController
  layout "admin"
  active_scaffold :phone_address do |config|
    config.list.columns = [:id, :Telephone, :ClientAddress, :town, :ClientZIP]
    config.show.columns = [:id, :Telephone, :ClientAddress, :town, :ClientZIP]
    config.create.columns = [:id, :Telephone, :ClientAddress, :town, :ClientZIP]
    config.update.columns = [:id, :Telephone, :ClientAddress, :town, :ClientZIP]
    config.columns[:town].form_ui = :select
  end
end
