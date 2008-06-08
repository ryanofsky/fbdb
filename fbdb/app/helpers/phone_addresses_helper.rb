module PhoneAddressesHelper
  # workaround to specify size of text fields 
  # see http://code.google.com/p/activescaffold/issues/detail?id=449
  def ClientAddress_form_column(record, input_name)
    text_field :record, :ClientAddress, :name => input_name, :size => 35, :maxlength => 35
  end
  def ClientZIP_form_column(record, input_name)
    text_field :record, :ClientZIP, :name => input_name, :size => 12, :maxlength => 10
  end
  def Telephone_form_column(record, input_name)
    text_field :record, :Telephone, :name => input_name, :size => 12, :maxlength => 12
  end
end
