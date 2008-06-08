class Event < ActiveRecord::Base
  set_table_name :EVENTS
  set_primary_key :EventID
  belongs_to :agency, :foreign_key => :AGENCYCODE
  belongs_to :school_district, :foreign_key => :SchoolCode
  has_and_belongs_to_many :people, :join_table => :LINKPERSONSEVENTS, :foreign_key => :EventID, :association_foreign_key => :SSNO
  def to_s
    self.EventDate
  end
end
