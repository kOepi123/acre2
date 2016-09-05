//fnc_setSelectableVoiceCurve.sqf
#include "script_component.hpp"

params ["_curveScale"];

if(IS_NUMBER(_curveScale)) then {
    if(_curveScale >= 0) then {
        ["setSelectableVoiceCurve", format["%1,", _curveScale]] call EFUNC(sys_rpc,callRemoteProcedure);
        GVAR(selectableCurveScale) = _curveScale;
    } else {
        diag_log text format["ACRE: SELECTABLE VOICE CURVE SCALE MUST BE A NUMBER GREATER OR EQUAL TO 0"];
    };
} else {
    diag_log text format["ACRE: SELECTABLE VOICE CURVE SCALE MUST BE A NUMBER GREATER OR EQUAL TO 0"];
};