class Town < ActiveRecord::Base
  set_table_name :TOWNS
  set_primary_key :TOWNCODES
  
  def to_label
    self.TOWNNAMES
  end
end
