
load './route.rb'
load './train.rb'
load './railway_station.rb'
station1 = RailwayStation.new('первая')
station2 = RailwayStation.new('вторая')
t1 = Train.new('123', 1)
t2 = Train.new('222', 2)
station1.accept_train(t1)
station1.accept_train(t2)
station1.format_trains

route1 = Route.new([station1, station2])
station3 = RailwayStation.new('третья')
route1.add_station(station3)
t1.accept_route(route1)
