class EventsController < ApplicationController
  layout "admin"
  active_scaffold :event do |config|
    config.columns = [:EventID, :EventDate, :Bags, :agency, :FirstAfterReferral,:OutOfArea, :school_district, :Comments, :people]
    config.columns[:EventID].label = "ID"
    config.columns[:EventDate].label = "Date"
    config.columns[:agency].form_ui = :select
    config.columns[:FirstAfterReferral].form_ui = :checkbox
    config.columns[:FirstAfterReferral].label = "First after Referral"
    config.columns[:OutOfArea].form_ui = :checkbox
    config.columns[:OutOfArea].label = "Out of Area"
    config.columns[:school_district].form_ui = :select

    config.list.columns = [:EventID, :EventDate, :Bags, :people]
    config.create.columns.exclude(:EventID)
    config.update.columns.exclude(:EventID)

    config.nested.add_link("People", [:people])
  end 
end
