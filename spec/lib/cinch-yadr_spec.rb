require_relative '../spec_helper'
require_relative '../../lib/cinch-yadr'

describe Yadr do
    include Cinch::Test

    before(:all) do
        @bot = make_bot(Yadr)
    end

    describe '#roll' do
        it 'should return a 1 or a 2 when rolling a d2' do
            roll = get_replies(make_message(@bot, '!roll 1d2'))
            roll = roll[/(\d+)/, 1]
            expect(1..2).to include(roll)
        end
        it 'should return a value between 3 and 9 when rolling 3d3' do
            roll = get_replies(make_message(@bot, '!roll 3d3'))
            roll = roll[/(\d+)/, 1]
            expect((3..9)).to include(roll.to_i)
        end
    end

    describe '#lazy' do
        xit "Rolls a single D20" do
            roll = get_replies(make_message(@bot, '!lazy'))
            roll = roll[/Total:   (\d+)/, 1]
            expect(1..20).to include(roll.to_i)
        end
    end
end
