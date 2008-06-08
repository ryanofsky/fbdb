class EventsController < ApplicationController
  layout "admin"
  active_scaffold :event do |config|
    config.list.columns = [:id, :EventDate, :Bags, :people]
    config.show.columns = [:EventDate, :agency, :Bags, :Comments, :FirstAfterReferral, :school_district, :OutOfArea]
    config.create.columns = [:EventDate, :agency, :Bags, :Comments, :FirstAfterReferral, :school_district, :OutOfArea]
    config.update.columns = [:EventDate, :agency, :Bags, :Comments, :FirstAfterReferral, :school_district, :OutOfArea]
    config.nested.add_link("People", [:people])
    config.columns[:agency].form_ui = :select
    config.columns[:school_district].form_ui = :select
  end 
end
