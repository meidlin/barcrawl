class EventsController < ApplicationController

  before_action :authenticate_user
# Create 
  def create
    event = Event.new(params.require(:event).permit(:title, :date, :description))
    if event.save
      redirect_to events_path
    else
      redirect_to new_event_path
    end
  end

  def new
    @event = Event.new
  end

# Read
  def show
    @event = Event.find(params[:id])
    @group = Group.find(params[:id])
  end

  def index
    @events =Event.all
    @groups =Group.all 
  end

# Update
  def edit
  end

  def update
  end

# Destroy

  def destroy
  end

  def landing
  end


  def authenticate_user
    if !current_user
    # redirect_to :root
    end 
  end

  
end
