# Маршрут:
# Имеет начальную и конечную станцию, а также список промежуточных станций
# Может добавлять станцию в список
# Может удалять станцию из списка
# Может выводить список всех станций по-порядку от начальной до конечной

class Route
  attr_accessor :station_list

  def initialize(station_list)
    @station_list = station_list
  end

  def add_station(station)
    return 'Station is invalid' unless station_is_valid(station)

    if station_is_present_in_list(station)
      station_list << station
    else
      'Station already exists'
    end
  end

  def remove_station(station)
    station_list.delete_if { |st| st.name == station.name }
  end

  def first_station
    station_list.first
  end

  def last_station
    station_list.last
  end

  private

  def station_is_valid(station)
    station.is_a?(RailwayStation)
  end

  def station_is_present_in_list(station)
    # Узнать, есть ли станция в списке как ?))
  end
end
