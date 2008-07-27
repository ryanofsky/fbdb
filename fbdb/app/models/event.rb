class Event < ActiveRecord::Base
  set_table_name :EVENTS
  set_primary_key :EventID
  belongs_to :agency, :foreign_key => :AGENCYCODE
  belongs_to :school_district, :foreign_key => :SchoolCode
  has_and_belongs_to_many :people, :join_table => :LINKPERSONSEVENTS, :foreign_key => :EventID, :association_foreign_key => :SSNO

  def to_label
    "Event"
  end

  def before_create
    if self.EventID.nil?
      self.EventID = connection.select_one("SELECT MAX(EventID) FROM EVENTS").values[0] + 1
    end
  end
end
