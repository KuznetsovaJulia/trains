class Train
  TYPES = %w[Passenger Cargo].freeze
  attr_reader :name, :type, :number_wagon, :speed
  def initialize(name, type_id, number_wagon = 1)
    @speed = 0
    @name = name
    @number_wagon = number_wagon
    @type = type_by_id(type_id)
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
  def accept_route(current_route)
    @current_route = current_route
    @current_station = current_route.first_station
    @current_station_index = 0
  end
  def move_to
    @current_station_index +=1
    @current_station = current_station_list[current_station_index]
  end
  def show_previous_station
    return 'This is the first station' unless  @current_station != current_route.first_station
   "Previous station of the route #{current_station_list[current_station_index-1].name}"
  end
  def show_current_station
    "Current station of the route #{current_station_list[current_station_index].name}"
  end
  def show_next_station
    return 'This is the last station' unless  @current_station != current_route.last_station
        "Next station of the route #{current_station_list[current_station_index+1].name}"
  end
  protected
  attr_writer   :number_wagon, :speed
  attr_accessor :current_station_index , :current_route, :current_station
  def type_by_id(type_id)
    TYPES[type_id - 1]
  end
  def pretty_info
    "Train: #{name}; type: #{type}"
  end
  def current_station_list
    @current_station_list = current_route.station_list
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
# Перемещаться между станциями, указанными в маршруте.
# Показывать предыдущую станцию, текущую, следующую, на основе маршрута
