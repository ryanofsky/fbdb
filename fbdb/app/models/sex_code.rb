class SexCode < ActiveRecord::Base
  set_table_name :SEXCODES
  set_primary_key :SEXCODE

  def to_s
    self.SEXCODE
  end
end
