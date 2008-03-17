class EventController < ApplicationController
  layout "admin"
  active_scaffold :event do |config|
    config.list.columns = [:id, :EventDate, :Bags, :people]
    config.nested.add_link("People", [:people])
  end 
end
