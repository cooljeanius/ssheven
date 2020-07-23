#include "ssheven-constants.r"

#include "Dialogs.r"

resource 'DLOG' (DLOG_CONNECT) {
	{ 50, 100, 240, 420 },
	dBoxProc,
	visible,
	noGoAway,
	0,
	128,
	"",
	centerMainScreen
};

resource 'DITL' (DITL_CONNECT) {
	{
		{ 190-10-20, 320-10-80, 190-10, 320-10 },
		Button { enabled, "Connect" };

		{ 190-10-20-5, 320-10-80-5, 190-10+5, 320-10+5 },
		UserItem { enabled };

		{ 10, 10, 30, 310 },
		StaticText { enabled, "Address with port" };

		{ 35, 10, 51, 310 },
		EditText { enabled, "10.0.2.2:22" };

		{ 60, 10, 80, 310 },
		StaticText { enabled, "Username" };

		{ 85, 10, 101, 310 },
		EditText { enabled, "" };

		{ 110, 10, 130, 310 },
		StaticText { enabled, "Password" };

		{ 135, 10, 151, 310 },
		EditText { enabled, "" };

		{ 190-10-20, 10, 190-10, 90 },
		Button { enabled, "Cancel" };
	}
};

resource 'DITL' (DITL_OT) {
	{
		{ 50, 260, 70, 340 },
		Button { enabled, "Exit" };

		{ 10, 70, 30, 340 },
		StaticText { enabled, "Open Transport required but not found!" };
	}
};

resource 'ALRT' (ALRT_OT, purgeable) {
	{ 50, 100, 50+80, 100+350 },
	DITL_OT,

	/* OK means draw default border on first button */
	{
		OK, visible, silent,
		OK, visible, silent,
		OK, visible, silent,
		OK, visible, silent
	},
	alertPositionMainScreen
};

resource 'DITL' (DITL_TM) {
	{
		{ 50, 260, 70, 340 },
		Button { enabled, "Exit" };

		{ 10, 70, 30, 340 },
		StaticText { enabled, "Thread Manager required but not found!" };
	}
};

resource 'ALRT' (ALRT_TM, purgeable) {
	{ 50, 100, 50+80, 100+350 },
	ALRT_TM,

	/* OK means draw default border on first button */
	{
		OK, visible, silent,
		OK, visible, silent,
		OK, visible, silent,
		OK, visible, silent
	},
	alertPositionMainScreen
};

#include "Processes.r"

resource 'SIZE' (-1) {
	reserved,
	acceptSuspendResumeEvents,
	reserved,
	canBackground,
	doesActivateOnFGSwitch,
	backgroundAndForeground,
	dontGetFrontClicks,
	ignoreChildDiedEvents,
	is32BitCompatible,
	notHighLevelEventAware,
	onlyLocalHLEvents,
	notStationeryAware,
	dontUseTextEditServices,
	reserved,
	reserved,
	reserved,
	SSHEVEN_MINIMUM_PARTITION,
	SSHEVEN_REQUIRED_PARTITION
};


#include "MacTypes.r"
/* see macintosh tb essentials page 7-31 */
/* yes, we need two */
/* first one displayed in version field of info window */
resource 'vers' (1, purgeable) {
	SSHEVEN_VERSION_MAJOR, SSHEVEN_VERSION_MINOR,
	SSHEVEN_RELEASE_TYPE, SSHEVEN_VERSION_PRERELEASE,
	SSHEVEN_RELEASE_REGION,
	SSHEVEN_VERSION,
	SSHEVEN_LONG_VERSION
};

/* second one displayed beneath icon at top of info window */
resource 'vers' (2, purgeable) {
	SSHEVEN_VERSION_MAJOR, SSHEVEN_VERSION_MINOR,
	SSHEVEN_RELEASE_TYPE, SSHEVEN_VERSION_PRERELEASE,
	SSHEVEN_RELEASE_REGION,
	SSHEVEN_VERSION,
	SSHEVEN_LONG_VERSION
};

/* signature resource */
type 'SSH7' as 'STR ';
resource 'SSH7' (0, purgeable) {
	SSHEVEN_DESCRIPTION
};

#include "Finder.r"
resource 'FREF' (128, purgeable) {
	'APPL', 0, ""
};

resource 'BNDL' (128, purgeable) {
	'SSH7', 0,
	{
		'ICN#', {0, 128},
		'FREF', {0, 128}
	}
};

#include "Icons.r"

/* use this regex to get rid of data comments: "            \/\*[^\*]*\*\/" */

data 'ICN#' (128) {
	$"1FFF FFF8 0FFF FFF0 07FF FFF0 03FF FFE0"
	$"0000 03E0 0000 07C0 0000 07C0 0000 0F80"
	$"0000 0F80 0000 1F00 0000 1F00 0000 3E00"
	$"0180 3E00 0240 7C00 0420 7C00 099F FFE0"
	$"0A40 0010 0A40 0010 099F FEA0 0423 E2A0"
	$"0243 E140 0187 C000 0007 C000 000F 8000"
	$"000F 8000 001F 0000 001F 0000 003E 0000"
	$"003E 0000 007C 0000 007C 0000 00F8 0000"
	$"1FFF FFF8 0FFF FFF0 07FF FFF0 03FF FFE0"
	$"0000 03E0 0000 07C0 0000 07C0 0000 0F80"
	$"0000 0F80 0000 1F00 0000 1F00 0000 3E00"
	$"0180 3E00 03C0 7C00 07E0 7C00 0FFF FFE0"
	$"0E7F FFF0 0E7F FFF0 0FFF FFE0 07E3 E3E0"
	$"03C3 E140 0187 C000 0007 C000 000F 8000"
	$"000F 8000 001F 0000 001F 0000 003E 0000"
	$"003E 0000 007C 0000 007C 0000 00F8 0000"
};

data 'icl4' (128) {
	$"000F FFFF FFFF FFFF FFFF FFFF FFFF F000"
	$"0000 FFFF FFFF FFFF FFFF FFFF FFFF 0000"
	$"0000 0FFF FFFF FFFF FFFF FFFF FFFF 0000"
	$"0000 00FF FFFF FFFF FFFF FFFF FFF0 0000"
	$"0000 0000 0000 0000 0000 00FF FFF0 0000"
	$"0000 0000 0000 0000 0000 0FFF FF00 0000"
	$"0000 0000 0000 0000 0000 0FFF FF00 0000"
	$"0000 0000 0000 0000 0000 FFFF F000 0000"
	$"0000 0000 0000 0000 0000 FFFF F000 0000"
	$"0000 0000 0000 0000 000F FFFF 0000 0000"
	$"0000 0000 0000 0000 000F FFFF 0000 0000"
	$"0000 0000 0000 0000 00FF FFF0 0000 0000"
	$"0000 000F F000 0000 00FF FFF0 0000 0000"
	$"0000 00F1 1F00 0000 0FFF FF00 0000 0000"
	$"0000 0F11 11F0 0000 0FFF FF00 0000 0000"
	$"0000 F11F F11F FFFF FFFF FFFF FFF0 0000"
	$"0000 F1F0 0F11 1111 1111 1111 111F 0000"
	$"0000 F1F0 0F12 2222 2222 2222 222F 0000"
	$"0000 F21F F12F FFFF FFFF FFF1 F1F0 0000"
	$"0000 0F21 12F0 00FF FFF0 00F2 F2F0 0000"
	$"0000 00F2 2F00 00FF FFF0 000F 0F00 0000"
	$"0000 000F F000 0FFF FF00 0000 0000 0000"
	$"0000 0000 0000 0FFF FF00 0000 0000 0000"
	$"0000 0000 0000 FFFF F000 0000 0000 0000"
	$"0000 0000 0000 FFFF F000 0000 0000 0000"
	$"0000 0000 000F FFFF 0000 0000 0000 0000"
	$"0000 0000 000F FFFF 0000 0000 0000 0000"
	$"0000 0000 00FF FFF0 0000 0000 0000 0000"
	$"0000 0000 00FF FFF0 0000 0000 0000 0000"
	$"0000 0000 0FFF FF00 0000 0000 0000 0000"
	$"0000 0000 0FFF FF00 0000 0000 0000 0000"
	$"0000 0000 FFFF F000 0000 0000 0000 0000"
};

data 'icl8' (128) {
	$"0000 00FF FFFF FFFF FFFF FFFF FFFF FFFF"
	$"FFFF FFFF FFFF FFFF FFFF FFFF FF00 0000"
	$"0000 0000 FFFF FFFF FFFF FFFF FFFF FFFF"
	$"FFFF FFFF FFFF FFFF FFFF FFFF 0000 0000"
	$"0000 0000 00FF FFFF FFFF FFFF FFFF FFFF"
	$"FFFF FFFF FFFF FFFF FFFF FFFF 0000 0000"
	$"0000 0000 0000 FFFF FFFF FFFF FFFF FFFF"
	$"FFFF FFFF FFFF FFFF FFFF FF00 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 FFFF FFFF FF00 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 00FF FFFF FFFF 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 00FF FFFF FFFF 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 FFFF FFFF FF00 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 FFFF FFFF FF00 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 00FF FFFF FFFF 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 00FF FFFF FFFF 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 FFFF FFFF FF00 0000 0000 0000 0000"
	$"0000 0000 0000 00FF FF00 0000 0000 0000"
	$"0000 FFFF FFFF FF00 0000 0000 0000 0000"
	$"0000 0000 0000 FF05 05FF 0000 0000 0000"
	$"00FF FFFF FFFF 0000 0000 0000 0000 0000"
	$"0000 0000 00FF 0505 0505 FF00 0000 0000"
	$"00FF FFFF FFFF 0000 0000 0000 0000 0000"
	$"0000 0000 FF05 05FF FF05 05FF FFFF FFFF"
	$"FFFF FFFF FFFF FFFF FFFF FF00 0000 0000"
	$"0000 0000 FF05 FF00 00FF 0505 0505 0505"
	$"0505 0505 0505 0505 0505 05FF 0000 0000"
	$"0000 0000 FF05 FF00 00FF 0516 1616 1616"
	$"1616 1616 1616 1616 1616 16FF 0000 0000"
	$"0000 0000 FF16 05FF FF05 16FF FFFF FFFF"
	$"FFFF FFFF FFFF FF05 FF05 FF00 0000 0000"
	$"0000 0000 00FF 1605 0516 FF00 0000 FFFF"
	$"FFFF FF00 0000 FF16 FF16 FF00 0000 0000"
	$"0000 0000 0000 FF16 16FF 0000 0000 FFFF"
	$"FFFF FF00 0000 00FF 00FF 0000 0000 0000"
	$"0000 0000 0000 00FF FF00 0000 00FF FFFF"
	$"FFFF 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 00FF FFFF"
	$"FFFF 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 FFFF FFFF"
	$"FF00 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 FFFF FFFF"
	$"FF00 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 00FF FFFF FFFF"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 00FF FFFF FFFF"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 FFFF FFFF FF00"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 FFFF FFFF FF00"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 00FF FFFF FFFF 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 00FF FFFF FFFF 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 FFFF FFFF FF00 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
};

data 'ics#' (128) {
	$"3FFC 1FF8 0018 0030 0030 0060 1860 27FC"
	$"27FC 1994 0180 0300 0300 0600 0600 0C00"
	$"3FFC 1FF8 0018 0030 0030 0060 1860 27FC"
	$"27FC 1994 0180 0300 0300 0600 0600 0C00"
};

data 'ics4' (128) {
	$"00FF FFFF FFFF FF00 000F FFFF FFFF F000"
	$"0000 0000 000F F000 0000 0000 00FF 0000"
	$"0000 0000 00FF 0000 0000 0000 0FF0 0000"
	$"0002 2000 0FF0 0000 0020 0222 2222 2200"
	$"0020 0222 2222 2200 0002 200F F002 0200"
	$"0000 000F F000 0000 0000 00FF 0000 0000"
	$"0000 00FF 0000 0000 0000 0FF0 0000 0000"
	$"0000 0FF0 0000 0000 0000 FF00 0000 0000"
};

data 'ics8' (128) {
	$"0000 FFFF FFFF FFFF FFFF FFFF FFFF 0000"
	$"0000 00FF FFFF FFFF FFFF FFFF FF00 0000"
	$"0000 0000 0000 0000 0000 00FF FF00 0000"
	$"0000 0000 0000 0000 0000 FFFF 0000 0000"
	$"0000 0000 0000 0000 0000 FFFF 0000 0000"
	$"0000 0000 0000 0000 00FF FF00 0000 0000"
	$"0000 0017 1700 0000 00FF FF00 0000 0000"
	$"0000 1700 0017 1717 1717 1717 1717 0000"
	$"0000 1700 0017 1717 1717 1717 1717 0000"
	$"0000 0017 1700 00FF FF00 0017 0017 0000"
	$"0000 0000 0000 00FF FF00 0000 0000 0000"
	$"0000 0000 0000 FFFF 0000 0000 0000 0000"
	$"0000 0000 0000 FFFF 0000 0000 0000 0000"
	$"0000 0000 00FF FF00 0000 0000 0000 0000"
	$"0000 0000 00FF FF00 0000 0000 0000 0000"
	$"0000 0000 FFFF 0000 0000 0000 0000 0000"
};

