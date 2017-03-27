require "pry"
class SpaceAge
  PLANETS = {
            jupiter: 11.862615,
            mercury: 0.2408467,
            venus: 0.61519726,
            mars: 1.8808158,
            saturn: 29.447498,
            uranus: 84.016846,
            neptune: 164.79132
            }
  attr_reader :seconds

  def initialize(seconds)
    @seconds = seconds
  end

  def method_missing(method_name, *args, &block)
    m_name = method_name.to_s
    if m_name.start_with?("on_")
      planet = m_name.sub("on_", "").to_sym
      orbital_period = PLANETS[planet]
      in_earth_years(orbital_period)
    else
      super(method_name, *args, &block)
    end
  end

  def on_earth
    seconds / 31557600.0
  end

  def in_earth_years(orbital_period)
    on_earth / orbital_period
  end

end
