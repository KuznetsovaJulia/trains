class Train
  TYPES = %w[Passenger Cargo].freeze

  attr_accessor :number_wagon, :speed
  attr_reader :name, :type, :route

  def initialize(name, type_id, number_wagon = 1)
    @speed = 0
    @name = name
    @number_wagon = number_wagon
    @type = type_by_id(type_id)
    @location = []
  end

  def stop # тормозить
    self.speed = 0
  end

  def go
    self.speed = 50
  end

  def add_wagon
    self.number_wagon += 1 if @speed.zero?
  end

  def remove_wagon
    self.number_wagon -= 1 if @speed.zero?
  end

  def accept_route(route)
    @route = route
  end

  def go_station; end

  def pretty_info
    "Train: #{name}; type: #{type}"
  end

  private

  def type_by_id(type_id)
    TYPES[type_id - 1]
  end
end

# Поезд:
# Имеет, тип, который указывается при создании: грузовой, пассажирский и количество вагонов.
# Поезд может делать следующие вещи:
# набирать скорость
# показывать текущую скорость
# тормозить
# показывать количество вагонов
# прицеплять/отцеплять вагоны (по одному вагону за операцию, метод просто увеличивает или уменьшает количество вагонов).
# Прицепка/отцепка вагонов может осуществляться только если поезд не движется.
# Принимать маршрут следования
#
# Перемещаться между станциями, указанными в маршруте.
# Показывать предыдущую станцию, текущую, следующую, на основе маршрута
