require 'spec_helper'
require_relative '../railway_station'
require_relative '../train'

RSpec.describe RailwayStation do
  let(:station) { described_class.new('Первая') }
  let(:first_train) { Train.new('Поезд1', 1) }
  let(:second_train) { Train.new('Поезд2', 2) }

  describe 'basic tests' do
    it 'should respond to basic methods' do
      expect(station).to respond_to(:format_trains, :accept_train)
    end
  end

  describe '#accept_train' do
    context 'train is invalid' do
      it 'should throw error when train is invalid' do
        result = station.accept_train('Просто строка')
        expect(result).to eq 'Train is Invalid'
      end

      it 'should be eq train_list.size before and after add' do
        expect(station.train_list.size).to eq 0
        station.accept_train(first_train)
        expect(station.train_list.size).to eq 1
        station.accept_train('Wrong Train')
        expect(station.train_list.size).to eq 1
      end
    end
  end
end
