# cinch-yadr [![Build Status](https://travis-ci.org/bbourqu/cinch-yadr.svg?branch=master)](https://travis-ci.org/bbourqu/cinch-yadr)
**Y**et **A**nother **D**ice **R**oller for [Cinch][cinchrb]

## Commands
```
!roll $d%
!roll $D%
```
This will produce a roll of a **%** sided die **$** times.

```
!lazy
```
This will produce a roll of 1D20.

```
!help
```
This will output the commands available

### Example Output
The Cinch Bot will reply with 2 lines in the following format:
```
<Bot Name>: <User Name> Result  : <Total of all die rolled>
<Bot Name>: <User Name> Breakout: [Die1, Die2, Die3, ...]
```

### Another Example:
```
Player: !roll 3d10
cinch: Player Result  : 19
cinch: Player Breakout: [10, 7, 2]
```
Notice that the "Breakout" replies with the largest results first and sorts them

```
Player: !lazy
cinch: Rolling 1d20
cinch: Player Result  : 7
```

```
Player !help
cinch: !roll <rolls>d<sides> - Rolls <sides> die <rolls> times
cinch: !lazy                 - Rolls one D20
cinch: !help                 - Shows this Message
```

## Dependencies
[Cinch][cinchrb]  
[Dice-Bag][dicelib]  

[cinchrb]: https://github.com/cinchrb/cinch
[dicelib]: https://github.com/syntruth/Dice-Bag
