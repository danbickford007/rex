require 'spec_helper'

describe Console do

  let(:console) { Console.new }

  describe 'calling help' do
  
    it 'should display help content when issuing help' do
      #console.stub(:gets).and_return('help')
      console.stub(:gets).and_return('help')
      Help.should_receive(:new)
      console.run
    end

  end  

end
