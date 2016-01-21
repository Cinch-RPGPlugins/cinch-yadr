require 'cinch'
require 'dicebag'

class Yadr
    include Cinch::Plugin

    match /roll (\d?{1,2}[dD]\d{1,2})/, method: :roll
    match /lazy/, method: :lazyroll
    match /help/

    def roll(m,format)
        m.reply "Rolling #{format}"
        dice   = DiceBag::Roll.new(format)
        result = dice.result()
        tally  = result.sections[0].tally()
        m.reply "Result  : #{result}",true
        m.reply "Breakout: #{tally}",true
    end

    def lazyroll(m)
        m.reply "Rolling 1D20"
        dice   = DiceBag::Roll.new('1d20')
        result = dice.result()
        m.reply "Result  : #{result}",true
    end

    def execute(m)
        m.reply "!roll <rolls>d<sides> - Rolls <sides> die <rolls> times"
        m.reply "!lazy                 - Rolls 1D20"
        m.reply "!help                 - Shows this Message"
    end
end
