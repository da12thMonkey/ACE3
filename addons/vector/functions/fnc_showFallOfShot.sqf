// by commy2
#include "script_component.hpp"

GVAR(FOSState) = _this select 0;

private "_dlgVector";

disableSerialization;
_dlgVector = GETUVAR(ACE_dlgVector,displayNull);

private "_fosData";

_fosData = GVAR(FOSData);

if !(_this select 0) then {
    private "_digits";

    // of ordinate
    _digits = [_fosData, 1] call FUNC(convertToTexturesFOS);

    (_dlgVector displayCtrl 1310) ctrlSetText (_digits select 0);
    (_dlgVector displayCtrl 1311) ctrlSetText (_digits select 1);
    (_dlgVector displayCtrl 1312) ctrlSetText (_digits select 2);
    (_dlgVector displayCtrl 1313) ctrlSetText (_digits select 3);
    (_dlgVector displayCtrl 1314) ctrlSetText (_digits select 4);

    // of abscissa
    _digits = [_fosData, 0] call FUNC(convertToTexturesFOS);

    (_dlgVector displayCtrl 1315) ctrlSetText (_digits select 0);
    (_dlgVector displayCtrl 1316) ctrlSetText (_digits select 1);
    (_dlgVector displayCtrl 1317) ctrlSetText (_digits select 2);
    (_dlgVector displayCtrl 1318) ctrlSetText (_digits select 3);
    (_dlgVector displayCtrl 1319) ctrlSetText (_digits select 4);

} else {
    private "_digits";

    // applicate
    _digits = [_fosData, 2] call FUNC(convertToTexturesFOS);

    (_dlgVector displayCtrl 1310) ctrlSetText (_digits select 0);
    (_dlgVector displayCtrl 1311) ctrlSetText (_digits select 1);
    (_dlgVector displayCtrl 1312) ctrlSetText (_digits select 2);
    (_dlgVector displayCtrl 1313) ctrlSetText (_digits select 3);
    (_dlgVector displayCtrl 1314) ctrlSetText (_digits select 4);

    // nothing
    (_dlgVector displayCtrl 1315) ctrlSetText "";
    (_dlgVector displayCtrl 1316) ctrlSetText "";
    (_dlgVector displayCtrl 1317) ctrlSetText "";
    (_dlgVector displayCtrl 1318) ctrlSetText "";
    (_dlgVector displayCtrl 1319) ctrlSetText "";

};

[GVAR(illuminate)] call FUNC(illuminate);
