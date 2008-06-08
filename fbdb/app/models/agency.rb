class Agency < ActiveRecord::Base
  set_table_name :AGENCIES
  set_primary_key :AGENCYCODE

  def to_label
    self.AGENCYNAME
  end
end
