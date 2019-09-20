require 'bike'

describe Bike do

  describe '#report_broken' do
  
    it 'changes #working? to false' do
      new_bike = Bike.new
      new_bike.report_broken
      expect(new_bike.working?).to eq false
    end 
  end 
end