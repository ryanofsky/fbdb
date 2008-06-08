class PeopleController < ApplicationController
  layout "admin"
  active_scaffold :person do |config|
    config.columns = [:SSNO, :LASTNAME, :FIRSTNAME, :EXTENSION, :BIRTHDATE, :sex_code, :ethnicity]
    config.columns[:SSNO].label = "SSN"
    config.columns[:LASTNAME].label = "Last Name"
    config.columns[:FIRSTNAME].label = "First Name"
    config.columns[:EXTENSION].description = "Jr., Sr., III, etc."
    config.columns[:sex_code].form_ui = :select
    config.columns[:sex_code].label = "Sex"
    config.columns[:ethnicity].form_ui = :select
    config.list.columns.exclude(:EXTENSION, :ethnicity, :events)
    config.nested.add_link("Events", [:events])
    config.nested.add_link("Address and Phone", [:phone_address])
  end
end
