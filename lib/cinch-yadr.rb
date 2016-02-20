#!/usr/bin/env ruby
require 'cinch'
require 'dicebag'

# Class:    Yadr
# Purpose:  Yet Another Dice Roller
# Location: https://github.com/bbourqu/cinch-yadr
#:nodoc:
class Yadr
  include Cinch::Plugin

  def roll(m, format)
    on :message, /roll (\d?{1,2}[dD]\d{1,2})/ do
      m.reply "Rolling #{format} for", true
      dice    = DiceBag::Roll.new(format)
      result  = dice.result()
      tally   = result.sections[0].tally()
      m.reply "Total   : #{result}", true
      m.reply "Breakout: #{tally}", true if tally.length > 1
    end
  end

  def lazyroll(m)
    on :message, /lazy/ do
      m.reply 'Rolling 1D20'
      dice    = DiceBag::Roll.new('1d20')
      result  = dice.result()
      m.reply "Result  : #{result}", true
    end
  end

  def execute(m)
    on :message, /help/ do
      m.reply '!roll <rolls>d<sides> - Rolls <sides> die <rolls> times'
      m.reply '!help                 - Shows this Message'
      m.reply '!lazy                 - Rolls 1D20'
    end
  end
end
