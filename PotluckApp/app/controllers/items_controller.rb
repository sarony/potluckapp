class ItemsController < ApplicationController
before_action :set_item, :only => [:show, :edit, :update, :destroy]

	def destroy
		@item.destroy
		redirect_to events_path
	end

	private

	def set_item
		@item = Item.find_by(:id => params[:id])
	end

	def params_item
		params.require(:item).permit(:name, :quantity, :unit)
	end

end
