# polybar-enableKeyboard
A simple script for whether to enable the keyboard

(My mother tongue is not English. If I make any grammatical or vocabulary mistakes, please forgive me)

## Polybar enable-keyboard 
A simple polybar-enableKeyboard module that adds an icon that changes dinamically accordingly to thte keyboard status

![on](https://github.com/apple115/polybar-enableKeyboard/blob/main/screenshots/DeepinScreenshot_select-area_20230818195118.png) When the keyboard is on

![off](https://github.com/apple115/polybar-enableKeyboard/blob/main/screenshots/DeepinScreenshot_select-area_20230818200820.png) When the keyboard is off

## Dependencies

- xinput
- Font Awesome 6 Free

## Installation

Need to change script:

in keyboardenable.sh

```
#!/bin/env bash
# find this id 
id=$(xinput | grep "Asus Keyboard .* (3)]" | grep -Po 'id=\K\d+')
# find device status
device_enable=$(xinput list-props $id | grep 'Device Enabled' | grep -Eo '(0|1)$')

if [ $device_enable -eq 1 ]; then
  xinput disable $id
else
  xinput enable $id
fi
```
in keyboard.sh
```
#!/bin/env bash
 id=$(xinput | grep "Asus Keyboard .* (3)]" | grep -Po 'id=\K\d+')
 device_enable=$(xinput list-props $id | grep 'Device Enabled' | grep -Eo '(0|1)$')
 if [ $device_enable -eq 1 ]; then
   echo "%{F#42A5F5}"
 else
   echo "%{F#2e317c}"
 fi
```

`Asus Keyboard` is my computer keyboard

If you want to know your computer keyboard, you can do:
```
> xinput
⎡ Virtual core pointer                    	id=2	[master pointer  (3)]
⎜   ↳ Virtual core XTEST pointer              	id=4	[slave  pointer  (2)]
⎜   ↳ ASUE120A:00 04F3:319B Mouse             	id=11	[slave  pointer  (2)]
⎜   ↳ ASUE120A:00 04F3:319B Touchpad          	id=12	[slave  pointer  (2)]
⎜   ↳ Asus Keyboard                           	id=14	[slave  pointer  (2)]
⎜   ↳ Logitech G304                           	id=16	[slave  pointer  (2)]
⎣ Virtual core keyboard                   	id=3	[master keyboard (2)]
    ↳ Virtual core XTEST keyboard             	id=5	[slave  keyboard (3)]
    ↳ Asus Wireless Radio Control             	id=6	[slave  keyboard (3)]
    ↳ Video Bus                               	id=7	[slave  keyboard (3)]
    ↳ Power Button                            	id=8	[slave  keyboard (3)]
    ↳ Sleep Button                            	id=9	[slave  keyboard (3)]
    ↳ Topre Corporation HHKB Professional     	id=10	[slave  keyboard (3)]
    ↳ Asus WMI hotkeys                        	id=13	[slave  keyboard (3)]
    ↳ Asus Keyboard                           	id=15	[slave  keyboard (3)]
    ↳ Logitech G304   
```
we can find `Asus Keyboard` in `Virtual core keyboard` 

we replaced `Asus Keyboard` for `your Device`


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


