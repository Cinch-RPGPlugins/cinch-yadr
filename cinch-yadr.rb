require 'cinch'
require 'dicebag'

class Yadr
    include Cinch::Plugin

    match(/roll (\d{1,2}d\d{1,2})/)

    def execute(m,format)
        dice   = DiceBag::Roll.new(format)

        result = dice.result()
        tally  = result.sections[0].tally()
        m.reply "Result  : #{result}",true
        m.reply "Breakout: #{tally}",true
    end
end
