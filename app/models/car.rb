class Car

  def initialize(make, year)
    @speed = 0
    @make = make
    @year = year
  end

  def make
    @make
  end

  def year
    @year
  end

  def speed
    @speed
  end

  def complete_car
    @year + " " + @make + " " + @speed.to_s + " " + "MPH"
  end

end
