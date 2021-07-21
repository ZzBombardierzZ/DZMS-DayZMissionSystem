**[DZMS] DayZ Mission System**
================

A Logic and Usability Rewrite of the DayZChernarus Mission System.

Completely overhauled to integrate new features and updates from DayZ Mod 1.9+/DayZ Epoch 1.0.7+.

Current Version is 2.1

If you are interested in helping, please contact me on EpochMod.com.

--------------------------
Installation
--------------------------
1.	Download the Github Zip folder and open it with your unPacker of choice.

	> https://github.com/worldwidesorrow/DZMS-DayZMissionSystem/archive/master.zip

2.	Extract it to your Desktop or somewhere where you won't lose it.
	Inside the Zip is this Readme.MD, a folder called Documentation, and one called DZMS.
	
3.	This mod is dependent on the Client Side Marker Manager. Download it ***[here](https://github.com/worldwidesorrow/Client-Side-Marker-Manager/)*** and install it according to the instructions.

4.	Open your Server.PBO with the PBO unPacker of your choice.

5.	Put the "DZMS" folder into your Server.pbo.

6.	Open up your ***server_functions.sqf*** in the init folder in your server.PBO.

	Place this line at the very bottom of the file.
	
	```sqf
	call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZMS\DZMSInit.sqf";
	```
	
7.	Copy file ***sched_corpses.sqf*** into directory ***dayz_server\system\scheduler*** to overwrite the existing one.

8.	Copy file ***sched_dzms.sqf*** into directory ***dayz_server\system\scheduler***.

9.	Open up your ***sched_init.sqf*** in the ***dayz_server\system\scheduler*** folder in your server.PBO.

	Find this line:
	
	```sqf
	call compile preprocessFileLineNumbers (PATH+"sched_safetyVehicle.sqf");
	```
	
	Place this line directly below it:
	
	```sqf
	call compile preprocessFileLineNumbers (PATH+"sched_dzms.sqf");
	```
	
	Find this line:
	
	```sqf
	[ 300,	 	336,	sched_lootpiles_5m,         sched_lootpiles_5m_init ],
	```
	
	Place this line directly below it:
	
	```sqf
	[ 90,		60,		sched_dzms,					sched_dzms_init ],
	```

10.	(Optional) Change the settings in DZMSConfig.sqf.

11.	(Optionally Optional) Adjust the files in the ExtConfig folder. Select the appropriate file for the mod you are running.

12.	Repack your server PBO.

### Battleye
If you are going to use the AI caching feature, then you need to add this exception to the end of line 46 or the one that starts with <code>5 hideObject</code>

 ```sqf
 !="this hideObject true"
 ```

### Vanilla Mod Only

1. Unpack your mission PBO.

2. Copy the ***dayz_code*** folder over to the root of your mission folder.

3. Edit file init.sqf

	Search for this line:

	```sqf
	waitUntil {scriptDone progress_monitor};
	```

	And insert this line directly ***above*** it.
	
	```sqf
	[] execVM "dayz_code\compile\remote_message.sqf";
	```
	
4. This mod is dependent on the Epoch community stringtable. Download the stringtable ***[here](https://github.com/oiad/communityLocalizations/)*** and place file stringTable.xml in the root of your mission folder. Repack your mission PBO.

5. Repack your mission PBO unless you are using the option below.



### If you wish to have the vehicle repair option available on mission spawned vehicles before server restart then complete the following steps.

1. Edit file init.sqf

	Search for this line:

	```sqf
	execFSM "\z\addons\dayz_code\system\player_monitor.fsm";
	```

	Insert this line directly ***above*** it.
	
	```sqf
	"PVCDZ_veh_Init" addPublicVariableEventHandler {if ((_this select 1) isKindOf "AllVehicles") then {(_this select 1) addEventHandler ["HandleDamage",{_this call fnc_veh_handleDam}];};};
	```
	
2. Repack your mission PBO.

--------------------------
Current Developers
--------------------------
* Vampire - Developer - https://epochmod.com/forum/profile/11819-thevampire/
* ebayShopper - Developer - https://epochmod.com/forum/profile/4400-ebayshopper/
* JasonTM - Developer v2.0 - https://github.com/worldwidesorrow

--------------------------
Thanks To
--------------------------
* Halvhjearne - For Debugging and Code Modifications.
* OpenDayz.net - For the knowledge I have today about Arma Coding.

--------------------------
Credits
--------------------------
* TAW_Tonic - Original Mission Creator. - http://www.altisliferpg.com/
* TheSzerdi - Original DayZ Mission Developer. - http://opendayz.net/members/theszerdi.3761/
* Lazyink - Modified the DayZ Mission system to work on Chernarus. - http://opendayz.net/members/lazyink.3595/

--------------------------
License
--------------------------
All the code and information provided here is provided under a Commons License.

http://creativecommons.org/licenses/by-sa/3.0/
