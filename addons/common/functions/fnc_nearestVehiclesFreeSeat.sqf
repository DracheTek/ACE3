#include "script_component.hpp"
/*
 * Author: 654wak654
 * Returns a list of vehicles near given unit that the unit can be a passenger in.
 *
 * Arguments:
 * 0: Unit <OBJECT>
 * 1: Distance <NUMBER>
 *
 * Return Value:
 * Nearest vehicles with a free seat <ARRAY>
 *
 * Example:
 * [bob] call ace_common_fnc_nearestVehiclesFreeSeat
 *
 * Public: Yes
 */

params ["_unit", ["_distance", 10]];

private _nearVehicles = nearestObjects [_unit, ["Car", "Air", "Tank", "Ship_F", "Pod_Heli_Transport_04_crewed_base_F"], _distance];
_nearVehicles select {
    // Filter cargo seats that will eject unconscious units (e.g. quad bike)
    ((_x emptyPositions "cargo" > 0) && {!(_unit getVariable ['ACE_isUnconscious', false])} || {(getNumber (configFile >> "CfgVehicles" >> (typeOf _x) >> "ejectDeadCargo")) == 0})
    || {{isNull (_x#0)} count fullCrew [_x, "", true] > _x emptyPositions "driver"}
}
