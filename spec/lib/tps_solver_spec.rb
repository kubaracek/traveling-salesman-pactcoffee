require 'spec_helper'
require 'tps_solver'

describe PactCoffee::TpsSolver do
  subject { PactCoffee::TpsSolver }
  describe '#search' do
    let(:search) { subject.search(lat_lngs, 5, 5, 0.1, 2.5, 0.1, 0.9) }
    let(:lat_lngs) { [[565,575],[25,185],[345,750],[945,685],[845,655],
     [880,660],[25,230],[525,1000],[580,1175],[650,1130],[1605,620],
     [1220,580],[1465,200],[1530,5],[845,680],[725,370],[145,665],
     [415,635],[510,875],[560,365],[300,465],[520,585],[480,415],
     [835,625],[975,580],[1215,245],[1320,315],[1250,400],[660,180],
     [410,250],[420,555],[575,665],[1150,1160],[700,580],[685,595],
     [685,610],[770,610],[795,645],[720,635],[760,650],[475,960],
     [95,260],[875,920],[700,500],[555,815],[830,485],[1170,65],
     [830,610],[605,625],[595,360],[1340,725],[1740,245]] }
    let(:start_position) {[565,573]}

    it 'should return an object containing vector key' do
      search.should have_key(:vector)
    end

    it 'should return an object containing cost key' do
      search.should have_key(:cost)
    end

    #Note this algorithm is Genetic! so it never returns same values
    it 'should return cost between 500k to 1.2m' do
      search[:cost].should be_between(500000, 1200000)
    end

    it 'vector count should return 52' do
      search[:vector].count.should eql 52
    end
  end
end