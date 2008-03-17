class PhoneAddress < ActiveRecord::Base
  set_table_name :PHONEADDRESS
  set_primary_key :SSNO
  belongs_to :person, :foreign_key => :SSNO
end
