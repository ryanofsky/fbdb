class PhoneAddress < ActiveRecord::Base
  set_table_name :PHONEADDRESS
  set_primary_key :SSNO
  belongs_to :person, :foreign_key => :SSNO
  belongs_to :town, :foreign_key => :TOWNCODES

  def to_label
    "Address and Phone"
  end

  def Telephone
    phone = (read_attribute(:Telephone)).gsub(/[- ()]/, "")
    phone && "(#{phone[0..-8]}) #{phone[-7..-5]}-#{phone[-4..-1]}"
  end

  def Telephone=(phone)
    write_attribute :Telephone, phone.gsub(/[- ()]/, "")
  end
end
