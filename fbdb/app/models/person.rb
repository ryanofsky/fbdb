class Person < ActiveRecord::Base
  set_table_name :PERSONS
  set_primary_key :SSNO
  has_one :phone_address, :foreign_key => :SSNO
  belongs_to :SEX, :class_name => "SexCode", :foreign_key => "SEX"
  has_and_belongs_to_many :events, :join_table => :LINKPERSONSEVENTS, :foreign_key => :SSNO, :association_foreign_key => :EventID
  def to_s
    "#{self.FIRSTNAME} #{self.LASTNAME}"
  end

  def before_save()
    if self.EXTENSION == ""
      self.EXTENSION = nil
    end
    if self.SortCode == ""
      self.SortCode = nil
    end
  end
end
