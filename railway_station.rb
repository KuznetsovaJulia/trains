class RailwayStation
  attr_accessor :train_list
  attr_reader :name

  def initialize(name)
    @name = name
    @train_list = []
  end

  def accept_train(train)
    return 'Train is Invalid' unless train_is_valid(train)
    train_list << train
  end

  def format_trains
    train_list.map(&:pretty_info)
  end

  private def train_is_valid(train)
    train.is_a?(Train)
   end
end

# Станция:
# Имеет название, которое указывается при ее создании
# Может принимать поезда
# Может показывать список всех поездов на станции, находящиеся в текущий момент
# Может показывать список поездов на станции по типу (см. ниже): кол-во грузовых, пассажирских
# Может отправлять поезда (при этом, поезд удаляется из списка поездов, находящихся на станции).
