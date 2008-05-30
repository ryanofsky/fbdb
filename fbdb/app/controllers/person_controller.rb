class PersonController < ApplicationController
  layout "admin"
  active_scaffold :person do |config|
    config.list.columns = [:SSNO, :LASTNAME, :FIRSTNAME, :SEX, :BIRTHDATE, :ETHNICITY, :EXTENSION ]
    config.show.columns = [:SSNO, :LASTNAME, :FIRSTNAME, :SEX, :BIRTHDATE, :ETHNICITY, :EXTENSION, :SortCode]
    config.create.columns = [:SSNO, :LASTNAME, :FIRSTNAME, :SEX, :BIRTHDATE, :ETHNICITY, :EXTENSION ]
    config.update.columns = [:SSNO, :LASTNAME, :FIRSTNAME, :SEX, :BIRTHDATE, :ETHNICITY, :EXTENSION ]
    config.nested.add_link("Events", [:events])
    config.nested.add_link("Phone and Address", [:phone_address])
    config.columns[:SEX].form_ui = :select
  end
end
