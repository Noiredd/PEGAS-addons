## KAC Launch Alarm
This addon adds support for the Kerbal Alarm Clock (KAC) mod. KAC is a popular mod which allows users to create their own alarms for certain events like transfer windows, contract deadlines, completing a vehicle construction, etc.

With this addon, PEGAS will be able to create an alarm for the launch. The alarm is added as soon as pegas starts up and calculates the liftoff time. Once it adds the alarm, a message will appear on the terminal UI confirming that an alarm has been added to KAC. Once that message appears, you can sefaly initiate time-warp and KAC will handle stopping it at the right time. If KAC is not installed, the message will say that adding the alarm failed.

### Config
This addon has a few options that can be configured to match your preference.

#### Advance
You can configure how many seconds ahead of T-0 the time-warp will be killed by editing the line below:
```
LOCAL kacAlarmAdvance IS 30.
```
Please note that the alarm will only be created if it will go off at least 5 seconds after it was set up. This means that if you left the `kacAlarmAdvance` as 30 seconds, an alarm will only be added if its over 35 seconds until liftoff. This is to avoid the alarm going off almost immediately after being created.

#### Action
You can also configure what will happed when the alarm goes off. KAC can kill time-warp, display a message or even pause the game. To change the alarm behaviour, edit this line:
```
LOCAL kacAlarmAction IS "PauseGame".
```
Available options are:
String | Description
--- | ---
KillWarpOnly | Kills time-warp and nothing else.
KillWarp | Kills time-warp and displays a message.
PauseGame | **Default:** Kills time-warp, displays a message and pauses the game. Game will only progress when you close the message box.

Technically there is also a `MessageOnly` option that does not affect time warp but that is not useful for this addon.

### Requirements
Please note that this addon requires [Kerbal Alarm Clock](https://github.com/TriggerAu/KerbalAlarmClock/releases) mod to be installed.