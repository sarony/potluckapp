class EventsController < ApplicationController
	before_action :set_event, only: [:show, :edit, :update, :destroy]

	def index
		@events = Event.all
	end

	def new # GET
		@event = Event.new
	end

	def create # POST
		@event.new(params_event)
		# binding.pry 
		@event.save
	end

	def show
	end

	def edit
	end

	def update
		@event.update(params_event)
	end

	def destroy
		@event.destroy
		redirect_to events_path
	end

	private
	def set_event
		@event = Event.find_by(:id => params[:id])
	end

	def params_event
		params.require(:event).permit(:name, :date, :time)
	end

end
