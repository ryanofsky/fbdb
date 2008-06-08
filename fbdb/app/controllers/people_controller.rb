class PeopleController < ApplicationController
  layout "admin"
  active_scaffold :person do |config|
    config.list.columns = [:LASTNAME, :FIRSTNAME, :sex_code, :BIRTHDATE, :ethnicity, :EXTENSION ]
    config.show.columns = [:LASTNAME, :FIRSTNAME, :sex_code, :BIRTHDATE, :ethnicity, :EXTENSION, :SortCode]
    config.create.columns = [:LASTNAME, :FIRSTNAME, :sex_code, :BIRTHDATE, :ethnicity, :EXTENSION ]
    config.update.columns = [:LASTNAME, :FIRSTNAME, :sex_code, :BIRTHDATE, :ethnicity, :EXTENSION ]
    config.nested.add_link("Events", [:events])
    config.nested.add_link("Phone and Address", [:phone_address])
    config.columns[:sex_code].form_ui = :select
    config.columns[:ethnicity].form_ui = :select
  end
end
