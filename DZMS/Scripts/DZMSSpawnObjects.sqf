// This is a modified version of the DayZ Epoch file fn_spawnObjects.sqf used to spawn mission objects.

local _objects = _this select 0;
local _pos = _this select 1;
local _mission = _this select 2;
local _object = objNull;
local _list = [];
local _fires = [
	"Base_Fire_DZ",
	"flamable_DZ",
	"Land_Camp_Fire_DZ",
	"Land_Campfire",
	"Land_Campfire_burning",
	"Land_Fire",
	"Land_Fire_burning",
	"Land_Fire_DZ",
	"Land_Fire_barrel",
	"Land_Fire_barrel_burning",
	"Misc_TyreHeap"
];

{
	local _type = _x select 0;
	local _offset = _x select 1;
	local _position = [(_pos select 0) + (_offset select 0), (_pos select 1) + (_offset select 1), 0];
	
	if (count _offset > 2) then {
		_position set [2, (_offset select 2)];
	};
	
	_object = _type createVehicle [0,0,0];
	
	if (count _x > 2) then {
		_object setDir (_x select 2);
	};
	
	_object setPos _position;
	_object setVectorUp surfaceNormal position _object;
	
	if (DZMSObjectsDamageOff) then {
		_object addEventHandler ["HandleDamage",{0}];
		if !(_type in _fires) then {_object enableSimulation false;};
	};
	
	_list set [count _list, _object];
	((DZMSMissionData select _mission) select 1) set [count ((DZMSMissionData select _mission) select 1), _object];
} forEach _objects;

_list
