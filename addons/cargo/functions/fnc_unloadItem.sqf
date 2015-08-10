/*
 * Author: Glowbal, ViperMaul
 * Unload object from vehicle
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Vehicle <OBJECT>
 *
 * Return value:
 * None
 *
 * Public: No
 */

#include "script_component.hpp"

private ["_loaded", "_space", "_itemSize", "_emptyPos", "_validVehiclestate"];
params ["_item", "_vehicle"];

if !([_item, _vehicle] call FUNC(canUnloadItem)) exitwith {
    systemChat format["Can not unload item"];
    false
};

_validVehiclestate = true;
_emptyPos = [];
if (_vehicle isKindOf "Ship" ) then {
    if !(speed _vehicle <1 && {(((getPosATL _vehicle) select 2) < 2)}) then {_validVehiclestate = false};
    TRACE_1("SHIP Ground Check", getPosATL _vehicle );
    _emptyPos = ((getPosASL _vehicle) call EFUNC(common,ASLtoPosition) findEmptyPosition [0, 15, typeOf _item]); // TODO: if spot is underwater pick another spot.
} else {
    if (_vehicle isKindOf "Air" ) then {
        if !(speed _vehicle <1 && {isTouchingGround _vehicle})  then {_validVehiclestate = false};
        TRACE_1("Vehicle Ground Check", isTouchingGround _vehicle);
        _emptyPos = (getPosASL _vehicle) call EFUNC(common,ASLtoPosition);
        _emptyPos = [(_emptyPos select 0) + random(5), (_emptyPos select 1) + random(5), _emptyPos select 2 ];
    } else {
        if !(speed _vehicle <1 && {(((getPosATL _vehicle) select 2) < 2)})  then {_validVehiclestate = false};
        TRACE_1("Vehicle Ground Check", isTouchingGround _vehicle);
        _emptyPos = ((getPosASL _vehicle) call EFUNC(common,ASLtoPosition) findEmptyPosition [0, 13, typeOf _item]);
    };
};

TRACE_1("getPosASL Vehicle Check", getPosASL _vehicle);
if (!_validVehiclestate) exitwith { false };

if (count _emptyPos == 0) exitwith { false};  //consider displaying text saying there are no safe places to exit the vehicle

_loaded = _vehicle getvariable [QGVAR(loaded), []];
_loaded = _loaded - [_item];
_vehicle setvariable [QGVAR(loaded), _loaded, true];

_space = [_vehicle] call FUNC(getCargoSpaceLeft);
_itemSize = [_item] call FUNC(getSizeItem);
_vehicle setvariable [QGVAR(space), _space + _itemSize, true];

detach _item;
_item setPosASL (_emptyPos call EFUNC(common,PositiontoASL));
["cargo_hideItem", [_item, false]] call EFUNC(common,serverEvent);

// TOOO maybe drag/carry the unloaded item?

true;
