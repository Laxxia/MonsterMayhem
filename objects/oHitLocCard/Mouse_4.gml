/// @description Insert description here
// You can write your code in this editor
if (visualState != VisualState.active) exit;

var pool = oMonster.hitLocPool;
hitCardInfoList.locationInformation[0] = pool[# hitLocationTable.locName, locationID];
hitCardInfoList.locationInformation[1] = pool[# hitLocationTable.locInfo, locationID];
hitCardInfoList.locationInformation[2] = pool[# hitLocationTable.locImage,locationID];
hitCardInfoList.locID = locationID;