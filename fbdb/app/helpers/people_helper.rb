module PeopleHelper
  # workaround to specify size of text fields 
  # see http://code.google.com/p/activescaffold/issues/detail?id=449
  def SSNO_form_column(record, input_name)
    text_field :record, :SSNO, :name => input_name, :size => 20, :maxlength => 11
  end
  def LASTNAME_form_column(record, input_name)
    text_field :record, :LASTNAME, :name => input_name, :size => 20, :maxlength => 20
  end
  def FIRSTNAME_form_column(record, input_name)
    text_field :record, :FIRSTNAME, :name => input_name, :size => 20, :maxlength => 20
  end
  def EXTENSION_form_column(record, input_name)
    text_field :record, :EXTENSION, :name => input_name, :size => 3, :maxlength => 3
  end
end
