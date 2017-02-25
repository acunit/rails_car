class Car
  def initialize(make, model, year, speed, lights, parking_brake)
    @make = make
    @model = model
    @year = year
    @speed = speed
    @lights = lights
    @lights_status
    @parking_brake = parking_brake
  end

  def car_name
    "#{@make} / #{@model} / #{@year}"
  end

  # Necessary for YAML
  def make= new_make
    @make = new_make
  end

  def model= new_model
    @model = new_model
  end

  def year= new_year
    @year = new_year
  end

  def accelerate
    @speed += 10
  end

  def brake
    if @speed < 7
      @speed = 0
    else
      @speed -= 7
    end
  end

  def get_speed
    @speed
  end

  def light_switch
    if @lights == true
      @lights = false
      @lights_status = "Off"
    else
      @lights = true
      @lights_status = "On"
    end
  end

  def get_lights
    if @lights == true
      @lights_status = "On"
    else
      @lights_status = "Off"
    end
  end

  def get_parking_brake
    @parking_brake_car
  end

  def parking_brake
    if @parking_brake == "set"
      @parking_brake = "release"
    else
      @parking_brake = "set"
    end
  end
end
