//	Addon Log creates a text file, writing the names of all registered addons.

GLOBAL addonName IS "Addon Log".

GLOBAL addonEnabled IS TRUE.

LOCAL logPath IS "addons.log".

FUNCTION logAddons {
	//	Overwrite the potentially existing log
	IF EXISTS(logPath) {
		DELETEPATH(logPath).
	}

	//	Do the work
	LOG "Currently installed addons:" TO logPath.
	FOR addon IN registeredAddons {
		LOG "* " + addon TO logPath.
	}
}

registerHook(logAddons@, "init").
