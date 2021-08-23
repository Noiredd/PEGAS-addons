//	KAC Launch Alarm lets PEGAS create KAC alarms so that you can safely warp to just before launch time

GLOBAL addonName IS "KAC Launch Alarm".

GLOBAL addonEnabled IS TRUE.		//	Controls whether the addon is enabled. If you don't want PEGAS to add alarms, set this to FALSE.

LOCAL kacAlarmAdvance IS 30.		//	Defines how many seconds before lift off the alarm should go off (30 seconds by default).

//	Available KAC actions are as follows:
//	"KillWarpOnly"	- Kills time-warp and nothing else.
//	"KillWarp"		- Kills time-warp and displays a message.
//	"PauseGame"		- Kills time-warp, displays a message and pauses the game. Game will only progress when you close the message box.
LOCAL kacAlarmAction IS "PauseGame".

FUNCTION addKacAlarm {
	//	Make sure Kerbal Alarm Clock is installed before trying to add the alarm.
	IF ADDONS:AVAILABLE("KAC") {
		//	Only add the alarm if it will go off more that 5 seconds from now. Otherwise it's not really needed.
		IF liftoffTime - kacAlarmAdvance > currentTime + 5 {
			LOCAL alarm IS ADDALARM("Raw", liftoffTime:SECONDS - kacAlarmAdvance, "Launch Alarm", SHIP:NAME + " is launching in " + kacAlarmAdvance + " seconds.").
			SET alarm:ACTION TO kacAlarmAction.
			pushUIMessage("Alarm added to KAC.").
		}
	} ELSE {
		//	If KAC is not available, display a UI message
		pushUIMessage("Failed to add KAC alarm! KAC not installed.").
	}
}

registerHook(addKacAlarm@, "init").