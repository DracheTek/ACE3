#include "script_component.hpp"
/*
 * Author: PabstMirror
 * Simple Lookup Table for various muzzle velocities and air frictions.
 * Use ace_mk6mortar_fnc_dev_buildTable to build
 *
 * Arguments:
 * 0: Muzzle Velocity <NUMBER>
 * 1: Air Friction <NUMBER>
 *
 * Return Value:
 * Array <ARRAY>
 *
 * Example:
 * [200, 0] call ace_mk6mortar_fnc_rangeTablePreCalculatedValues
 *
 * Public: No
 */

params ["_muzzleVelocity", "_airFriction"];

switch (true) do {
case ((abs(_muzzleVelocity - 50) < 0.00001) && {(abs(_airFriction - -0.0001) < 0.00001)}): {
    [
    ["100","1390","33","1.8","9.9","1.5","0.2","-0.1","0.0","-0.0","-0.0","0.0"],
    ["150","1271","56","1.9","9.6","1.0","0.2","-0.2","0.0","-0.0","-0.0","0.0"],
    ["200","1125","98","2.2","9.0","0.7","0.2","-0.2","0.0","-0.1","-0.1","0.0"]
    ]
};
case ((abs(_muzzleVelocity - 70) < 0.00001) && {(abs(_airFriction - -0.0001) < 0.00001)}): {
    [
    ["100","1493","9","1.4","14.0","3.7","0.4","-0.3","0.0","0.0","0.0","0.0"],
    ["150","1438","14","1.4","13.9","2.5","0.4","-0.4","0.0","0.0","-0.1","0.0"],
    ["200","1381","20","1.4","13.8","1.9","0.5","-0.4","0.0","0.0","-0.1","0.1"],
    ["250","1321","27","1.5","13.6","1.5","0.5","-0.4","0.0","0.0","-0.1","0.1"],
    ["300","1256","36","1.6","13.3","1.3","0.6","-0.5","0.0","-0.1","-0.1","0.1"],
    ["350","1183","49","1.7","12.9","1.1","0.6","-0.5","0.1","-0.1","-0.1","0.1"],
    ["400","1097","70","1.9","12.4","0.9","0.6","-0.5","0.1","-0.1","-0.2","0.1"],
    ["450","979","113","2.3","11.6","0.8","0.6","-0.5","0.1","-0.1","-0.2","0.2"]
    ]
};
case ((abs(_muzzleVelocity - 100) < 0.00001) && {(abs(_airFriction - -0.0001) < 0.00001)}): {
    [
    ["100","1546","3","1.0","19.9","9.9","1.0","-1.0","0.0","-0.0","-0.1","0.1"],
    ["150","1519","4","1.0","19.8","6.7","1.1","-1.0","0.0","-0.0","-0.1","0.1"],
    ["200","1492","5","1.0","19.8","5.0","1.1","-1.0","0.0","-0.0","-0.1","0.2"],
    ["250","1464","7","1.0","19.7","4.0","1.1","-1.0","0.0","-0.1","-0.2","0.2"],
    ["300","1436","8","1.0","19.6","3.4","1.2","-1.0","0.1","-0.0","-0.2","0.2"],
    ["350","1407","10","1.1","19.5","2.9","1.3","-1.1","0.0","-0.1","-0.3","0.2"],
    ["400","1377","11","1.1","19.4","2.6","1.3","-1.1","0.1","-0.1","-0.3","0.3"],
    ["450","1347","13","1.1","19.3","2.3","1.4","-1.1","0.1","-0.1","-0.3","0.3"],
    ["500","1315","15","1.1","19.1","2.1","1.4","-1.2","0.1","-0.1","-0.4","0.4"],
    ["550","1282","18","1.1","18.9","1.9","1.5","-1.3","0.1","-0.1","-0.4","0.4"],
    ["600","1248","21","1.2","18.7","1.7","1.5","-1.3","0.1","-0.1","-0.5","0.4"],
    ["650","1212","24","1.2","18.5","1.6","1.6","-1.3","0.1","-0.1","-0.5","0.5"],
    ["700","1173","29","1.3","18.2","1.5","1.6","-1.4","0.1","-0.1","-0.5","0.5"],
    ["750","1130","35","1.4","17.8","1.4","1.7","-1.4","0.1","-0.1","-0.6","0.6"],
    ["800","1082","43","1.5","17.4","1.2","1.7","-1.5","0.1","-0.1","-0.6","0.6"],
    ["850","1025","55","1.7","16.8","1.1","1.7","-1.5","0.1","-0.1","-0.6","0.7"],
    ["900","951","80","2.0","16.0","1.0","1.7","-1.5","0.2","-0.1","-0.7","0.7"]
    ]
};
case ((abs(_muzzleVelocity - 140) < 0.00001) && {(abs(_airFriction - -0.0001) < 0.00001)}): {
        [
        ["150","1556","1","0.8","27.2","16.3","2.5","-2.4","0.0","0.0","-0.2","0.2"],
        ["200","1541","1","0.8","27.2","12.3","2.5","-2.4","0.0","0.0","-0.3","0.2"],
        ["250","1527","2","0.8","27.2","9.9","2.6","-2.4","0.0","0.0","-0.3","0.3"],
        ["300","1512","2","0.8","27.2","8.3","2.7","-2.4","0.1","0.0","-0.4","0.4"],
        ["350","1497","3","0.8","27.1","7.1","2.7","-2.5","0.0","-0.1","-0.5","0.4"],
        ["400","1482","3","0.8","27.1","6.2","2.7","-2.5","0.1","-0.1","-0.5","0.5"],
        ["450","1467","3","0.8","27.0","5.6","2.8","-2.5","0.1","-0.1","-0.6","0.6"],
        ["500","1451","4","0.8","27.0","5.0","2.9","-2.6","0.1","-0.1","-0.6","0.6"],
        ["550","1436","4","0.8","26.9","4.6","2.9","-2.6","0.1","-0.1","-0.7","0.7"],
        ["600","1420","5","0.8","26.8","4.2","3.0","-2.7","0.1","-0.1","-0.8","0.8"],
        ["650","1404","5","0.8","26.8","3.9","3.0","-2.7","0.1","-0.1","-0.9","0.8"],
        ["700","1388","6","0.8","26.7","3.6","3.1","-2.8","0.1","-0.1","-0.9","0.9"],
        ["750","1372","6","0.8","26.6","3.4","3.2","-2.8","0.1","-0.1","-1.0","1.0"],
        ["800","1355","7","0.8","26.5","3.2","3.2","-2.9","0.1","-0.1","-1.1","1.1"],
        ["850","1338","8","0.8","26.4","3.0","3.3","-2.9","0.1","-0.1","-1.1","1.1"],
        ["900","1321","8","0.8","26.2","2.8","3.4","-3.0","0.1","-0.1","-1.2","1.2"],
        ["950","1303","9","0.9","26.1","2.7","3.4","-3.1","0.1","-0.2","-1.3","1.2"],
        ["1000","1285","10","0.9","26.0","2.6","3.5","-3.1","0.2","-0.1","-1.4","1.3"],
        ["1050","1266","11","0.9","25.8","2.4","3.5","-3.2","0.1","-0.2","-1.4","1.4"],
        ["1100","1247","12","0.9","25.7","2.3","3.6","-3.3","0.1","-0.2","-1.5","1.4"],
        ["1150","1228","13","0.9","25.5","2.2","3.7","-3.3","0.2","-0.2","-1.6","1.5"],
        ["1200","1207","14","1.0","25.3","2.1","3.7","-3.4","0.2","-0.2","-1.7","1.6"],
        ["1250","1186","15","1.0","25.1","2.0","3.8","-3.4","0.2","-0.2","-1.7","1.7"],
        ["1300","1163","17","1.0","24.8","1.9","3.8","-3.5","0.2","-0.2","-1.8","1.7"],
        ["1350","1140","19","1.0","24.6","1.9","3.9","-3.5","0.2","-0.2","-1.9","1.8"],
        ["1400","1115","21","1.1","24.3","1.8","3.9","-3.6","0.2","-0.2","-1.9","1.9"],
        ["1450","1088","24","1.1","23.9","1.7","4.0","-3.6","0.2","-0.2","-2.0","1.9"],
        ["1500","1060","27","1.2","23.6","1.6","4.0","-3.7","0.2","-0.2","-2.1","2.0"],
        ["1550","1028","32","1.3","23.1","1.5","4.0","-3.7","0.2","-0.2","-2.1","2.1"],
        ["1600","991","38","1.4","22.6","1.5","4.0","-3.7","0.2","-0.2","-2.2","2.1"],
        ["1650","947","49","1.7","21.9","1.4","4.0","-3.7","0.2","-0.3","-2.3","2.2"],
        ["1700","888","71","2.1","21.0","1.3","3.9","-3.6","0.3","-0.3","-2.3","2.2"]
        ]
    };
case ((abs(_muzzleVelocity - 150) < 0.00001) && {(abs(_airFriction - -0.0001) < 0.00001)}): {
    [
    ["150","1561","1","0.7","29.0","19.5","3.0","-2.9","0.0","-0.0","-0.2","0.2"],
    ["200","1548","1","0.7","29.0","14.7","3.0","-2.9","0.0","-0.0","-0.3","0.3"],
    ["250","1535","1","0.7","29.0","11.8","3.1","-2.9","0.0","-0.0","-0.4","0.3"],
    ["300","1522","2","0.7","28.9","9.9","3.1","-2.9","0.1","-0.0","-0.4","0.4"],
    ["350","1508","2","0.7","28.9","8.5","3.2","-2.9","0.0","-0.1","-0.5","0.5"],
    ["400","1495","2","0.7","28.9","7.4","3.2","-3.0","0.1","-0.1","-0.6","0.6"],
    ["450","1482","3","0.7","28.8","6.6","3.3","-3.0","0.1","-0.1","-0.7","0.6"],
    ["500","1468","3","0.7","28.8","6.0","3.3","-3.0","0.1","-0.1","-0.7","0.7"],
    ["550","1455","3","0.7","28.7","5.5","3.4","-3.1","0.1","-0.1","-0.8","0.8"],
    ["600","1441","4","0.7","28.7","5.0","3.4","-3.1","0.1","-0.1","-0.9","0.8"],
    ["650","1427","4","0.8","28.6","4.6","3.5","-3.2","0.1","-0.1","-1.0","0.9"],
    ["700","1413","4","0.8","28.5","4.3","3.6","-3.2","0.1","-0.1","-1.0","1.0"],
    ["750","1399","5","0.8","28.5","4.0","3.6","-3.3","0.1","-0.1","-1.1","1.1"],
    ["800","1385","5","0.8","28.4","3.8","3.7","-3.3","0.1","-0.1","-1.2","1.2"],
    ["850","1370","6","0.8","28.3","3.6","3.8","-3.4","0.1","-0.1","-1.3","1.2"],
    ["900","1355","6","0.8","28.2","3.4","3.8","-3.5","0.1","-0.1","-1.4","1.3"],
    ["950","1340","7","0.8","28.1","3.2","3.9","-3.5","0.1","-0.1","-1.4","1.4"],
    ["1000","1325","7","0.8","28.0","3.1","4.0","-3.6","0.2","-0.1","-1.5","1.5"],
    ["1050","1309","8","0.8","27.9","2.9","4.0","-3.6","0.2","-0.1","-1.6","1.5"],
    ["1100","1293","8","0.8","27.7","2.8","4.1","-3.7","0.1","-0.2","-1.7","1.6"],
    ["1150","1277","9","0.8","27.6","2.7","4.2","-3.7","0.2","-0.2","-1.7","1.7"],
    ["1200","1260","10","0.8","27.4","2.6","4.2","-3.8","0.2","-0.2","-1.9","1.8"],
    ["1250","1243","10","0.9","27.3","2.4","4.3","-3.9","0.2","-0.2","-1.9","1.9"],
    ["1300","1226","11","0.9","27.1","2.4","4.4","-3.9","0.2","-0.2","-2.0","1.9"],
    ["1350","1207","12","0.9","26.9","2.3","4.4","-4.0","0.2","-0.2","-2.1","2.0"],
    ["1400","1188","13","0.9","26.7","2.2","4.5","-4.1","0.2","-0.2","-2.1","2.1"],
    ["1450","1169","15","0.9","26.5","2.1","4.5","-4.1","0.2","-0.2","-2.2","2.2"],
    ["1500","1148","16","1.0","26.2","2.0","4.6","-4.2","0.2","-0.2","-2.3","2.3"],
    ["1550","1127","18","1.0","26.0","1.9","4.6","-4.2","0.2","-0.2","-2.4","2.3"],
    ["1600","1104","20","1.1","25.7","1.9","4.7","-4.3","0.2","-0.2","-2.5","2.4"],
    ["1650","1079","22","1.1","25.4","1.8","4.7","-4.3","0.3","-0.2","-2.6","2.5"],
    ["1700","1053","25","1.2","25.0","1.7","4.7","-4.4","0.2","-0.3","-2.6","2.5"],
    ["1750","1024","29","1.3","24.6","1.6","4.7","-4.4","0.3","-0.3","-2.7","2.6"],
    ["1800","992","34","1.4","24.1","1.6","4.7","-4.4","0.3","-0.3","-2.8","2.7"],
    ["1850","954","42","1.5","23.5","1.5","4.7","-4.4","0.3","-0.3","-2.8","2.7"],
    ["1900","905","57","1.8","22.6","1.4","4.6","-4.3","0.3","-0.3","-2.9","2.8"],
    ["1950","817","104","2.8","21.0","1.2","4.4","-4.1","0.3","-0.3","-2.9","2.8"]
    ]
};
case ((abs(_muzzleVelocity - 200) < 0.00001) && {(abs(_airFriction - -0.0001) < 0.00001)}): {
        [
        ["250","1559","1","0.6","37.3","23.8","6.1","-5.9","0.0","0.0","-0.6","0.5"],
        ["300","1551","1","0.6","37.3","20.0","6.1","-5.9","0.1","0.0","-0.7","0.7"],
        ["350","1543","1","0.6","37.3","17.2","6.2","-5.9","0.0","-0.1","-0.8","0.7"],
        ["400","1535","1","0.6","37.3","15.1","6.2","-5.9","0.1","0.0","-0.9","0.9"],
        ["450","1527","1","0.6","37.3","13.4","6.3","-6.0","0.1","-0.1","-1.0","1.0"],
        ["500","1519","1","0.6","37.2","12.1","6.3","-6.0","0.1","-0.1","-1.1","1.1"],
        ["550","1510","1","0.6","37.2","11.0","6.4","-6.0","0.1","-0.1","-1.3","1.2"],
        ["600","1502","1","0.6","37.2","10.1","6.4","-6.1","0.1","-0.1","-1.4","1.3"],
        ["650","1494","1","0.6","37.2","9.4","6.5","-6.1","0.1","-0.1","-1.5","1.4"],
        ["700","1485","2","0.6","37.1","8.7","6.5","-6.2","0.1","-0.1","-1.6","1.5"],
        ["750","1477","2","0.6","37.1","8.2","6.6","-6.2","0.1","-0.1","-1.7","1.6"],
        ["800","1468","2","0.6","37.0","7.7","6.7","-6.3","0.1","-0.1","-1.8","1.8"],
        ["850","1460","2","0.6","37.0","7.2","6.7","-6.3","0.1","-0.1","-2.0","1.9"],
        ["900","1451","2","0.6","37.0","6.8","6.8","-6.4","0.1","-0.1","-2.1","2.0"],
        ["950","1443","2","0.6","36.9","6.5","6.9","-6.4","0.1","-0.1","-2.2","2.1"],
        ["1000","1434","2","0.6","36.9","6.2","6.9","-6.5","0.1","-0.1","-2.3","2.2"],
        ["1050","1425","2","0.6","36.8","5.9","7.0","-6.6","0.1","-0.2","-2.5","2.3"],
        ["1100","1417","3","0.6","36.8","5.6","7.1","-6.6","0.1","-0.2","-2.6","2.4"],
        ["1150","1408","3","0.6","36.7","5.4","7.1","-6.7","0.2","-0.2","-2.7","2.5"],
        ["1200","1399","3","0.6","36.6","5.2","7.2","-6.7","0.2","-0.2","-2.8","2.7"],
        ["1250","1390","3","0.6","36.6","5.0","7.3","-6.8","0.2","-0.2","-2.9","2.8"],
        ["1300","1381","3","0.6","36.5","4.8","7.4","-6.9","0.2","-0.2","-3.0","2.9"],
        ["1350","1372","3","0.6","36.4","4.6","7.4","-6.9","0.2","-0.2","-3.2","3.0"],
        ["1400","1362","4","0.6","36.4","4.4","7.5","-7.0","0.2","-0.2","-3.3","3.1"],
        ["1450","1353","4","0.6","36.3","4.3","7.6","-7.1","0.2","-0.2","-3.4","3.2"],
        ["1500","1344","4","0.6","36.2","4.2","7.7","-7.1","0.2","-0.2","-3.5","3.4"],
        ["1550","1334","4","0.6","36.1","4.0","7.7","-7.2","0.2","-0.2","-3.7","3.5"],
        ["1600","1324","4","0.6","36.0","3.9","7.8","-7.3","0.2","-0.2","-3.8","3.6"],
        ["1650","1314","4","0.7","35.9","3.8","7.9","-7.3","0.2","-0.2","-3.9","3.7"],
        ["1700","1304","5","0.7","35.8","3.7","7.9","-7.4","0.2","-0.2","-4.0","3.8"],
        ["1750","1294","5","0.7","35.7","3.6","8.0","-7.5","0.2","-0.2","-4.2","3.9"],
        ["1800","1284","5","0.7","35.6","3.5","8.1","-7.6","0.2","-0.3","-4.3","4.0"],
        ["1850","1274","5","0.7","35.5","3.4","8.2","-7.6","0.2","-0.3","-4.4","4.2"],
        ["1900","1263","6","0.7","35.4","3.3","8.2","-7.7","0.2","-0.3","-4.5","4.3"],
        ["1950","1253","6","0.7","35.2","3.2","8.3","-7.8","0.2","-0.3","-4.7","4.4"],
        ["2000","1242","6","0.7","35.1","3.1","8.4","-7.8","0.3","-0.3","-4.8","4.5"],
        ["2050","1231","7","0.7","35.0","3.0","8.4","-7.9","0.3","-0.3","-4.9","4.7"],
        ["2100","1219","7","0.7","34.8","2.9","8.5","-8.0","0.3","-0.3","-5.0","4.8"],
        ["2150","1208","7","0.7","34.7","2.9","8.5","-8.0","0.3","-0.3","-5.2","4.9"],
        ["2200","1196","8","0.7","34.5","2.8","8.6","-8.1","0.3","-0.3","-5.3","5.0"],
        ["2250","1184","8","0.7","34.3","2.7","8.7","-8.2","0.3","-0.3","-5.4","5.1"],
        ["2300","1171","9","0.8","34.2","2.7","8.7","-8.2","0.3","-0.3","-5.5","5.2"],
        ["2350","1158","9","0.8","34.0","2.6","8.8","-8.3","0.3","-0.3","-5.7","5.4"],
        ["2400","1145","10","0.8","33.8","2.5","8.8","-8.3","0.3","-0.3","-5.8","5.5"],
        ["2450","1132","10","0.8","33.6","2.5","8.9","-8.4","0.3","-0.3","-5.9","5.6"],
        ["2500","1118","11","0.8","33.3","2.4","8.9","-8.4","0.3","-0.3","-6.0","5.7"],
        ["2550","1103","12","0.8","33.1","2.4","9.0","-8.5","0.3","-0.3","-6.1","5.8"],
        ["2600","1088","13","0.9","32.8","2.3","9.0","-8.5","0.4","-0.3","-6.2","5.9"],
        ["2650","1072","14","0.9","32.6","2.2","9.0","-8.6","0.4","-0.4","-6.4","6.0"],
        ["2700","1056","15","0.9","32.3","2.2","9.0","-8.6","0.3","-0.4","-6.5","6.1"],
        ["2750","1038","16","1.0","31.9","2.1","9.1","-8.6","0.4","-0.4","-6.6","6.3"],
        ["2800","1020","18","1.0","31.6","2.1","9.1","-8.6","0.4","-0.4","-6.7","6.4"],
        ["2850","1000","20","1.1","31.2","2.0","9.1","-8.6","0.4","-0.4","-6.8","6.5"],
        ["2900","978","22","1.1","30.8","1.9","9.0","-8.6","0.4","-0.4","-6.9","6.5"],
        ["2950","954","26","1.2","30.3","1.9","9.0","-8.6","0.4","-0.4","-7.0","6.6"],
        ["3000","927","31","1.4","29.7","1.8","8.9","-8.5","0.4","-0.4","-7.1","6.7"],
        ["3050","894","38","1.6","29.0","1.7","8.8","-8.4","0.4","-0.4","-7.2","6.8"],
        ["3100","849","54","2.0","27.9","1.6","8.5","-8.3","0.4","-0.4","-7.2","6.8"]
        ]
    };
case ((abs(_muzzleVelocity - 50) < 0.00001) && {(abs(_airFriction - 0) < 0.00001)}): {
    [
    ["100","1395","31","1.8","10.0","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["150","1279","55","1.9","9.7","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["200","1139","94","2.2","9.2","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["250","894","222","3.1","7.8","0.0","0.0","0.0","0.0","0.0","0.0","0.0"]
    ]
};
case ((abs(_muzzleVelocity - 70) < 0.00001) && {(abs(_airFriction - 0) < 0.00001)}): {
        [
        ["100","1497","9","1.3","14.2","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["150","1445","14","1.3","14.1","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["200","1390","19","1.4","14.0","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["250","1333","26","1.4","13.8","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["300","1272","34","1.5","13.5","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["350","1204","45","1.6","13.2","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["400","1127","61","1.8","12.8","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["450","1028","91","2.1","12.1","0.0","0.0","0.0","0.0","0.0","0.0","0.0"]
        ]
    };
case ((abs(_muzzleVelocity - 100) < 0.00001) && {(abs(_airFriction - 0) < 0.00001)}): {
    [
    ["100","1550","2","1.0","20.4","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["150","1525","3","1.0","20.3","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["200","1499","5","1.0","20.3","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["250","1474","6","1.0","20.2","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["300","1448","7","1.0","20.2","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["350","1421","9","1.0","20.1","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["400","1395","10","1.0","20.0","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["450","1367","12","1.0","19.9","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["500","1339","13","1.0","19.7","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["550","1310","15","1.1","19.6","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["600","1279","18","1.1","19.4","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["650","1248","21","1.1","19.2","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["700","1214","24","1.2","18.9","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["750","1179","28","1.2","18.7","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["800","1140","33","1.3","18.3","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["850","1098","40","1.4","18.0","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["900","1049","50","1.6","17.5","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["950","989","66","1.8","16.8","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["1000","898","106","2.4","15.7","0.0","0.0","0.0","0.0","0.0","0.0","0.0"]
    ]
};
case ((abs(_muzzleVelocity - 140) < 0.00001) && {(abs(_airFriction - 0) < 0.00001)}): {
        [
        ["150","1562","1","0.7","28.5","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["200","1549","1","0.7","28.5","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["250","1536","2","0.7","28.5","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["300","1523","2","0.7","28.5","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["350","1510","2","0.7","28.4","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["400","1497","3","0.7","28.4","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["450","1484","3","0.7","28.4","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["500","1471","3","0.7","28.3","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["550","1458","4","0.7","28.3","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["600","1445","4","0.7","28.2","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["650","1431","4","0.7","28.2","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["700","1418","5","0.7","28.1","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["750","1404","5","0.7","28.0","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["800","1390","6","0.7","27.9","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["850","1376","6","0.7","27.9","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["900","1362","6","0.8","27.8","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["950","1348","7","0.8","27.7","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1000","1333","7","0.8","27.6","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1050","1318","8","0.8","27.5","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1100","1303","9","0.8","27.3","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1150","1288","9","0.8","27.2","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1200","1272","10","0.8","27.1","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1250","1256","11","0.8","26.9","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1300","1239","12","0.8","26.8","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1350","1222","13","0.9","26.6","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1400","1205","13","0.9","26.4","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1450","1187","15","0.9","26.2","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1500","1168","16","0.9","26.0","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1550","1148","18","1.0","25.8","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1600","1127","19","1.0","25.5","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1650","1105","21","1.1","25.2","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1700","1082","24","1.1","24.9","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1750","1057","27","1.2","24.6","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1800","1029","31","1.3","24.2","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1850","997","37","1.4","23.7","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1900","960","46","1.6","23.1","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1950","912","63","1.9","22.3","0.0","0.0","0.0","0.0","0.0","0.0","0.0"]
        ]
    };
case ((abs(_muzzleVelocity - 150) < 0.00001) && {(abs(_airFriction - 0) < 0.00001)}): {
    [
    ["200","1556","1","0.7","30.6","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["250","1544","1","0.7","30.5","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["300","1533","1","0.7","30.5","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["350","1522","2","0.7","30.5","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["400","1511","2","0.7","30.5","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["450","1499","2","0.7","30.4","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["500","1488","2","0.7","30.4","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["550","1477","3","0.7","30.4","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["600","1465","3","0.7","30.3","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["650","1454","3","0.7","30.3","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["700","1442","4","0.7","30.2","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["750","1430","4","0.7","30.2","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["800","1419","4","0.7","30.1","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["850","1407","4","0.7","30.0","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["900","1395","5","0.7","30.0","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["950","1383","5","0.7","29.9","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["1000","1370","5","0.7","29.8","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["1050","1358","6","0.7","29.7","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["1100","1345","6","0.7","29.6","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["1150","1333","7","0.7","29.5","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["1200","1320","7","0.7","29.4","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["1250","1307","7","0.7","29.3","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["1300","1293","8","0.8","29.2","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["1350","1280","8","0.8","29.1","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["1400","1266","9","0.8","29.0","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["1450","1252","10","0.8","28.8","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["1500","1237","10","0.8","28.7","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["1550","1222","11","0.8","28.5","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["1600","1207","12","0.8","28.3","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["1650","1191","13","0.9","28.2","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["1700","1175","14","0.9","28.0","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["1750","1158","15","0.9","27.8","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["1800","1141","16","0.9","27.5","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["1850","1122","17","1.0","27.3","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["1900","1103","19","1.0","27.0","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["1950","1083","21","1.0","26.7","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["2000","1061","24","1.1","26.4","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["2050","1037","27","1.2","26.0","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["2100","1011","31","1.3","25.6","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["2150","981","36","1.4","25.1","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["2200","946","45","1.6","24.5","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
    ["2250","900","61","1.9","23.6","0.0","0.0","0.0","0.0","0.0","0.0","0.0"]
    ]
};
case ((abs(_muzzleVelocity - 200) < 0.00001) && {(abs(_airFriction - 0) < 0.00001)}): {
        [
        ["300","1563","0","0.5","40.8","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["350","1556","1","0.5","40.8","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["400","1550","1","0.5","40.7","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["450","1544","1","0.5","40.7","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["500","1537","1","0.5","40.7","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["550","1531","1","0.5","40.7","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["600","1525","1","0.5","40.7","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["650","1519","1","0.5","40.7","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["700","1512","1","0.5","40.6","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["750","1506","1","0.5","40.6","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["800","1499","1","0.5","40.6","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["850","1493","1","0.5","40.6","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["900","1487","1","0.5","40.5","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["950","1480","1","0.5","40.5","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1000","1474","2","0.5","40.5","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1050","1467","2","0.5","40.5","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1100","1461","2","0.5","40.4","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1150","1454","2","0.5","40.4","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1200","1448","2","0.5","40.3","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1250","1441","2","0.5","40.3","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1300","1435","2","0.5","40.3","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1350","1428","2","0.5","40.2","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1400","1422","2","0.5","40.2","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1450","1415","2","0.5","40.1","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1500","1408","2","0.5","40.1","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1550","1402","3","0.5","40.0","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1600","1395","3","0.5","40.0","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1650","1388","3","0.5","39.9","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1700","1381","3","0.5","39.9","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1750","1374","3","0.5","39.8","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1800","1367","3","0.5","39.7","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1850","1360","3","0.5","39.7","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1900","1353","3","0.5","39.6","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["1950","1346","4","0.5","39.5","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["2000","1339","4","0.5","39.5","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["2050","1332","4","0.5","39.4","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["2100","1325","4","0.6","39.3","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["2150","1317","4","0.6","39.2","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["2200","1310","4","0.6","39.2","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["2250","1302","4","0.6","39.1","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["2300","1295","5","0.6","39.0","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["2350","1287","5","0.6","38.9","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["2400","1280","5","0.6","38.8","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["2450","1272","5","0.6","38.7","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["2500","1264","5","0.6","38.6","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["2550","1256","5","0.6","38.5","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["2600","1248","6","0.6","38.4","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["2650","1240","6","0.6","38.3","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["2700","1232","6","0.6","38.2","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["2750","1223","6","0.6","38.0","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["2800","1215","7","0.6","37.9","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["2850","1206","7","0.6","37.8","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["2900","1197","7","0.6","37.6","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["2950","1188","7","0.7","37.5","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["3000","1179","8","0.7","37.4","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["3050","1170","8","0.7","37.2","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["3100","1160","8","0.7","37.1","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["3150","1151","9","0.7","36.9","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["3200","1141","9","0.7","36.7","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["3250","1131","10","0.7","36.5","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["3300","1120","10","0.7","36.3","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["3350","1109","11","0.8","36.2","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["3400","1098","11","0.8","35.9","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["3450","1087","12","0.8","35.7","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["3500","1075","13","0.8","35.5","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["3550","1062","14","0.8","35.2","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["3600","1049","15","0.9","35.0","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["3650","1036","16","0.9","34.7","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["3700","1021","17","0.9","34.4","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["3750","1006","19","1.0","34.1","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["3800","990","21","1.1","33.7","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["3850","971","24","1.1","33.3","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["3900","952","27","1.2","32.8","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["3950","929","32","1.4","32.2","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["4000","900","40","1.6","31.5","0.0","0.0","0.0","0.0","0.0","0.0","0.0"],
        ["4050","861","56","2.1","30.5","0.0","0.0","0.0","0.0","0.0","0.0","0.0"]
        ]
    };
    default {
        ERROR("MuzzleVelocity not found in LUT");
        []
    };
};
