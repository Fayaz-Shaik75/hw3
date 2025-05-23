class EntriesController < ApplicationController

  def new
    @place = Place.find_by("id" => params["id"])
  end

  def create
    # start with a new Entry
    @entry = Entry.new

    # assign user-entered form data to Entry's columns
    @entry["title"] = params["title"]
    @entry["occurred_on"] = params["date"]
    @entry["description"] = params["description"]
    @entry["place_id"] = params["id"]

    # save Contact row
    @entry.save

    # redirect user to place specific view
    redirect_to "/places/#{params["id"]}"
  end

end
