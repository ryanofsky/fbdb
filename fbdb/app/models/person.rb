class Person < ActiveRecord::Base
  set_table_name :PERSONS
  set_primary_key :SSNO
  has_one :phone_address, :foreign_key => :SSNO
  has_and_belongs_to_many :events, :join_table => :LINKPERSONSEVENTS, :foreign_key => :SSNO, :association_foreign_key => :EventID
end
