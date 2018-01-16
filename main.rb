load './route.rb'
load './train.rb'
load './railway_station.rb'
station1 = RailwayStation.new(name:'Краснодар') # созданили станции 1
station2 = RailwayStation.new(name:'Абинск') # создали станцию 2
t1 = Train.new('123', 1) # создали поезд 1
t2 = Train.new('222', 2) # создали поезд 2
route1 = Route.new([station1, station2])  # создали маршрут 1
route1.station_list
station1.format_trains    # вывели находящиеся на станции 1 поезд
station3 = RailwayStation.new(name:'Новороссийск')       # создали станцию 3
route1.add_station(station3)   # добавили в маршрут 1 станцию 3
t1.accept_route(route1)        #поезд принял маршрут 1
route1.station_list
station1.format_trains
t1.show_next_station
t1.show_previous_station
t1.move_to
t1.show_current_station
