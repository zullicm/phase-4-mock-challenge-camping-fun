class ActivitiesController < ApplicationController

  def index
    activities = Activity.all
    render json: activities, status: :ok
  end

  def destroy
    activity = Activity.find_by(id: params[:id])
    if activity
      activity.destroy
      head :no_content
    else
      render json: { error: "Activity not found" }, status: :not_found
    end
  end

  private

  def render_unprocessable_entity_response(invalid)
    render json: { errors: invalid.record.errors }, status: :unprocessable_entity
  end

end
