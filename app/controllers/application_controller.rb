class ApplicationController < ActionController::Base
	protect_from_forgery

	layout = 'united'

	def load_guide
		@guide = Guide.find(params[:guide_id])
	end

	def load_step
		@step = @guide.steps.find(params[:id])
	end
end
