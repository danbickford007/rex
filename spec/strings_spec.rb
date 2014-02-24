require 'spec_helper'

describe Strings do

  let(:console) { Console.new }
  let(:strings) { Strings.new(console, ["test"]) }

  describe '#add' do
    it 'should add single string to console strings' do
      strings.add
      expect(console.strings.first).to eq("test")
    end
  end
  describe '#remove' do
    it 'should remove string from strings' do
      strings.remove
      expect(console.strings.first).to eq(nil)
    end
  end
  describe 'view' do
    it 'should list strings' do
      strings.add
      expect(strings.view).to eq("test")
    end
  end

end
