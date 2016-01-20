# cinch-yadr
*Y*et *A*nother *D*ice *R*oller for [Cinch][cinchrb]

## Commands
```
!roll $d%
```
This will produce a roll of a *%* sided die *$* times.

## Example Output
The Cinch Bot will reply with 2 lines in the following format:
```
\<Bot Name\> \<User Name\> Results: \<total of all die rolled\>
\<Bot Name\> \<User Name\> Breakout: [Die1, Die2, Die3, ...]
```

Example Output:
```
Player: !roll 3d10
cinch: Player Results: 19
cinch: Player Breakout: [10, 7, 2]
```

Notice that the "Breakout" replies with the largest results first and sorts them

[cinchrb]: https://github.com/cinchrb/cinch
