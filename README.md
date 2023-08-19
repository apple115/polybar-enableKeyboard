# polybar-enableKeyboard
A simple script for whether to enable the keyboard

## Polybar enable-keyboard 
A simple polybar-enableKeyboard module that adds an icon that changes dinamically accordingly to thte keyboard status

![on](https://github.com/apple115/polybar-enableKeyboard/blob/main/screenshots/DeepinScreenshot_select-area_20230818195118.png) When the keyboard is on

![off](https://github.com/apple115/polybar-enableKeyboard/blob/main/screenshots/DeepinScreenshot_select-area_20230818200820.png) When the keyboard is off


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




