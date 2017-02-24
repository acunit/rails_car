class CarController < ApplicationController
  def landing
    if !params.has_key?(:make) || params[:make].strip.empty? ||
      !params.has_key?(:model) || params[:model].strip.empty? || !params.has_key?(:year) || params[:year].strip.empty?
    # renders landing page
      render "landing.html.erb"
    else
      params[:speed] = 0
      params[:lights] = false
      params[:parking_brake] = "Set"
      # create a car object with the make model and year
      car = Car.new(params[:make], params[:model], params[:year], params[:speed], params[:lights], params[:parking_brake])
      # save car object in session, so it can be accessed in the game
      session[:car] = car.to_yaml
      # redirects to the status page
      redirect_to "/simulator/status"
    end
  end
end
