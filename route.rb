#Маршрут:
# Имеет начальную и конечную станцию, а также список промежуточных станций
# Может добавлять станцию в список
# Может удалять станцию из списка
# Может выводить список всех станций по-порядку от начальной до конечной

class Route
  attr_accessor :route, :end_station,
                :starting_station, :list_station
  attr_reader :station

  def initialize(station_list)
    @station_list = station_list
  end

  def add_station(station)
    self.route = @route + [station.name]
  end

  def remove_station(number)
    self.route = @route - [route[number - 1]]
  end
end




