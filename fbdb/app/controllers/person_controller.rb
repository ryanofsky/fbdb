class PersonController < ApplicationController
  layout "admin"
  active_scaffold :person do |config|
    config.list.columns = [:id, :LASTNAME, :FIRSTNAME, :SEX, :BIRTHDATE, :ETHNICITY, :EXTENSION, :SortCode]
    config.show.columns = [:id, :LASTNAME, :FIRSTNAME, :SEX, :BIRTHDATE, :ETHNICITY, :EXTENSION, :SortCode]
    config.create.columns = [:id, :LASTNAME, :FIRSTNAME, :SEX, :BIRTHDATE, :ETHNICITY, :EXTENSION, :SortCode]
    config.update.columns = [:id, :LASTNAME, :FIRSTNAME, :SEX, :BIRTHDATE, :ETHNICITY, :EXTENSION, :SortCode]
    config.nested.add_link("Events", [:events])
    config.nested.add_link("Phone and Address", [:phone_address])
  end
end
