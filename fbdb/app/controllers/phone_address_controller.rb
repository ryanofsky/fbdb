class PhoneAddressController < ApplicationController
  layout "admin"
  active_scaffold :phone_address do |config|
    config.list.columns = [:id, :Telephone, :ClientAddress, :TOWNCODES, :ClientZIP]
    config.show.columns = [:id, :Telephone, :ClientAddress, :TOWNCODES, :ClientZIP]
    config.create.columns = [:id, :Telephone, :ClientAddress, :TOWNCODES, :ClientZIP]
    config.update.columns = [:id, :Telephone, :ClientAddress, :TOWNCODES, :ClientZIP]
  end
end
