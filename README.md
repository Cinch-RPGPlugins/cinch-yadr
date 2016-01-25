#  cinch-yadr [![Build Status](https://travis-ci.org/bbourqu/cinch-yadr.svg?branch=master)](https://travis-ci.org/bbourqu/cinch-yadr)
**Y**et **A**nother **D**ice **R**oller for [Cinch][cinchrb]

## Commands
```
!roll $d%
!roll $D%
!roll d%
!roll D%
```
This will produce a roll of a **%** sided die **$** times.
Note that the **$** (Number of Die to be Rolled) is optional

```
!lazy
```
This will produce a roll of 1D20.  
This is for Lazy DM/GM's who want to roll a quick D20 but dont want to type out `!roll 1D20`

```
!help
```
This will output the available commands

### Example Output:
The Cinch Bot will reply with 2 lines in the following format:
```
<Bot Name>: <User Name> Result  : <Total of all die rolled>
<Bot Name>: <User Name> Breakout: [Die1, Die2, Die3, ...]
```
Notice that the "Breakout" replies with the largest results first and sorts them

```
Player: !roll 3d10
cinch: Rolling 3d10's
cinch: Player Results : 19
cinch: Player Breakout: [10, 7, 2]
```

```
Player: !roll d10
cinch: Rolling D10
cinch: Player Result  : 3
```

```
Player: !lazy
cinch: Rolling 1D20
cinch: Player Result  : 7
```

```
Player !help
cinch: !roll <rolls>d<sides> - Rolls <sides> die <rolls> times
cinch: !lazy                 - Rolls one D20
cinch: !help                 - Shows this Message
```

## Example Usage

```ruby

require 'cinch'
require 'cinch-yadr'

bot = Cinch::Bot.new do
  configure do |c|
    c.server = 'irc.freenode.org'
    c.channesl = ['#cinch-bots']
    c.plugins.plugins = [Yadr]
  end
end
bot.start

```

## Dependencies
[Cinch][cinchrb]  
[Dice-Bag][dicelib]  

[cinchrb]: https://github.com/cinchrb/cinch
[dicelib]: https://github.com/syntruth/Dice-Bag
