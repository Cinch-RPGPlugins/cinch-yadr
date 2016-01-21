#!/usr/bin/env ruby
require 'cinch'
require 'dicebag'

# Class:    Yadr
# Purpose:  Yet Another Dice Roller
# Location: https://github.com/bbourqu/cinch-yadr
#:nodoc:
class Yadr
  include Cinch::Plugin

  on :message, /roll (\d?{1,2}[dD]\d{1,2})/ do
    :roll
  end
  on :message, /lazy/ do
    :lazyroll
  end
  on :message, /help/ do
    :execute
  end

  def roll(m, format)
    m.reply "Rolling #{format}"
    dice    = DiceBag::Roll.new(format)
    result  = dice.result()
    tally   = result.sections[0].tally()
    m.reply "Result  : #{result}", true
    m.reply "Breakout: #{tally}", true
  end

  def lazyroll(m)
    m.reply 'Rolling 1D20'
    dice    = DiceBag::Roll.new('1d20')
    result  = dice.result()
    m.reply "Result  : #{result}", true
  end

  def execute(m)
    m.reply '!roll <rolls>d<sides> - Rolls <sides> die <rolls> times'
    m.reply '!help                 - Shows this Message'
    m.reply '!lazy                 - Rolls 1D20'
  end
end
