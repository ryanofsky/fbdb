class SchoolDistrict < ActiveRecord::Base
  set_table_name :SCHOOLDISTRICTS
  set_primary_key :SCHOOLCODE
  
  def to_label
    self.SCHOOLNAME
  end
end
