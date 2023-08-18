# polybar-enableKeyboard
A simple script for whether to enable the keyboard

## Polybar enable-keyboard 


## Dependencies

- xinput
- Font Awesome 6 Free


## Installation
Place the shell script files in your preferred sctipt directory.

Add the module to your polybar config file

```ini
[module/keyboardenable]
type = custom/script
exec = path/to/scripts/keyboard.sh
interval = 2
click-left = exec path/to/scripts/keyboardenable.sh
click-right = exec path/to/scripts/keyboardenable.sh
```




