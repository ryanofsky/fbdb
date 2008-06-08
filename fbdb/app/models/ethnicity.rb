class Ethnicity < ActiveRecord::Base
  set_table_name :ETHNICITIES
  set_primary_key :ETHCODE
  
  def to_s
    self.ETHDEFINITION.capitalize
  end
end
