require_relative "plane"
require_relative "hand_of_god"

class Airport

# Constants
  CAPACITY = 5

# Attribute Readers/Writers
  # We use an attr_accessor to accomodate for the ability
  # to expand in the future
  attr_accessor :airp_capacity
  attr_accessor :planes

# Requiments / Modules
  include Weather

# Methods
  def initialize(airp_capacity = CAPACITY)
    @airp_capacity = airp_capacity
    @planes = []
  end

  def dock(plane)
    raise "Plane is already docked" if @planes.include?(plane)
    raise "Weather Stormy!! Planes cannot land/dock" if stormy?
    raise "Airport is full, cannot land" if full?
    @planes << plane
    "Plane has been docked"
  end

  def launch(plane)
    raise "Plane is already in the air" unless @planes.include?(plane)
    raise "Weather Stormy!! Planes are Grounded" if stormy?
    raise "There are no planes in the airport" if empty?
    @planes.delete(plane)
    "Plane has been launched"
  end

  def count_of_planes
    @planes.count
  end

  def full?
    @planes.count >= airp_capacity
  end

  def empty?
    @planes.count <= 0
  end

end
