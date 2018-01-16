require 'spec_helper'
require_relative '../railway_station'
require_relative '../train'
require_relative '../route'

RSpec.describe Train do
let(:train) { described_class.new('Первая',1) }
let(:station1) { RailwayStation.new(name: 'Краснодар') }
let(:station2) { RailwayStation.new(name: 'Абинск') }
let(:route1) { Route.new([:station1,:station2]) }
  describe 'basic tests' do
    it 'should respond to basic methods' do
      expect(train).to respond_to(:name, :type, :number_wagon, :speed)
    end
  end

  describe 'move_to' do
      it 'if current station this is last station ' do
        train.accept_route(route1)
        train.move_to
        result=train.move_to
        expect(result).to eq 'This is the last station'
      end

    end
  end
