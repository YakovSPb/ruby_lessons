require 'rspec'
require_relative '../demo'

RSpec.describe Demo do
    let(:obj) {puts 'obj created!'; described_class.new(100)}

    specify '#my_arr' do
        puts obj.val
        # obj = described_class.new
        expect(obj.my_arr).to include(2)
        obj.val = 1
    end

    specify '#calc' do
        # obj = described_class.new
        expect(obj.calc(2,3)).to eq(6)
        expect(obj).to be_an_instance_of(Demo)
    end
    
    specify '.run' do
        puts obj.val
        puts "My class is #{described_class.inspect}"
        result = described_class.run
        # if result == 43
        #     puts 'ok'
        # else
        #     raise 'not okay'
        # end
        expect(result).to eq(42)
    end
end
