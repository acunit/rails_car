class SimulatorController < ApplicationController
  def status
    Car
    @car = YAML.load(session[:car])
    @car_speed = @car.get_speed
    @car_lights = @car.get_lights
    @car_parking_brake = @car.get_parking_brake
    session[:car] = @car.to_yaml
  end

  def accelerate_car
    Car
    @car = YAML.load(session[:car])
    @car_speed = @car.accelerate
    @car_lights = @car.get_lights
    @car_parking_brake = @car.get_parking_brake
    session[:car] = @car.to_yaml
    redirect_to '/simulator/status'
  end

  def brake_car
    Car
    @car = YAML.load(session[:car])
    @car_speed = @car.brake
    @car_lights = @car.get_lights
    @car_parking_brake = @car.get_parking_brake
    session[:car] = @car.to_yaml
    redirect_to '/simulator/status'
  end

  def lights_car
    Car
    @car = YAML.load(session[:car])
    @car_speed = @car.get_speed
    @car.light_switch
    @car_lights = @car.get_lights
    @car_parking_brake = @car.get_parking_brake
    session[:car] = @car.to_yaml
    redirect_to '/simulator/status'
  end

  def parking_brake_car
    Car
    @car = YAML.load(session[:car])
    @car_speed = @car.get_speed
    @car_lights = @car.get_lights
    @car_parking_brake = @car.parking_brake
    @car_parking_brake = @car.get_parking_brake
    session[:car] = @car.to_yaml
    redirect_to '/simulator/status'
  end
end
