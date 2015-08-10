/*
 * Author: Glowbal
 * Start load item
 *
 * Arguments:
 * 0: Any object <OBJECT>
 *
 * Return value:
 * None
 *
 * Public: No
 */

#include "script_component.hpp"

params ["_player", "_object"];

private ["_nearestVehicle"];
_nearestVehicle = [_player] call FUNC(findNearestVehicle);

if (isNull _nearestVehicle) exitwith {false};
[_object, _nearestVehicle] call FUNC(loadItem);
