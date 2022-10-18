# ASCII-Clock

Using minimal Linux but wants to use a timer? Launch a countdown in the terminal. Yet another TUI clock/timer.

![alt text](https://github.com/jerrykress/ASCII-Clock/blob/main/Screenshot.png?raw=true)

## Requirement

**Xcurse Library**

```
# Clone from my repo for the latest version
git clone https://github.com/jerrykress/Xcurse
```

## How to use

Compile the source and provide optional timer duration argument

```
# Launch with no argument, timer defaults to 1 minute
./Clock

# Launch with timer argument in minutes
# for example set timer to 5 minutes
./Clock 5
```

## Key Bindings

```
C ->     Clock Mode
T ->     Timer Mode
S ->    Start Timer
P ->    Pause Timer
R ->    Reset Timer
< ->    -1min Timer
> ->    +1min Timer
; ->     Prev style
. ->     Next style
[ ->      Prev font
] ->      Next font
H ->   Toggle Hints
? ->    Toggle Help
```

## Future Updates

- More fonts and background (including colored!)
