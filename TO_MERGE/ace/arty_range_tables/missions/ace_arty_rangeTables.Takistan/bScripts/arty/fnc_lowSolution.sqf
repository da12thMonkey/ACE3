private ["_low_solution","_ndist","_initSpeed","_friction","_altitude_impact","_gravity"];

_ndist = _this select 0;
_initSpeed = _this select 1;
_friction = _this select 2;
_altitude_impact = _this select 3;
_gravity = 9.80665;

_low_solution = atan((_gravity*exp(2.*_ndist*_friction)*_ndist-1.*_gravity*_ndist-2.*_ndist^2*_friction*_gravity+2.*_ndist*_friction^2*_initspeed^2*_altitude_impact+_altitude_impact*(4.*_ndist^2*_friction^4*_initspeed^4+8.*_ndist*_friction^3*_initspeed^2*_altitude_impact*_gravity+4.*_friction^2*_initspeed^2*_altitude_impact*_gravity-4.*_friction^2*_initspeed^2*_altitude_impact*_gravity*exp(2.*_ndist*_friction)-1.*_gravity^2*exp(4.*_ndist*_friction)+2.*_gravity^2*exp(2.*_ndist*_friction)+4.*_ndist*_gravity^2*exp(2.*_ndist*_friction)*_friction-1.*_gravity^2-4.*_ndist*_friction*_gravity^2-4.*_ndist^2*_friction^2*_gravity^2)^(1/2))/(2.*_ndist^2*_friction^2*_initspeed^2+2.*_altitude_impact*_friction*_ndist*_gravity+_altitude_impact*_gravity-1.*_altitude_impact*_gravity*exp(2.*_ndist*_friction)+_ndist*(4.*_ndist^2*_friction^4*_initspeed^4+8.*_ndist*_friction^3*_initspeed^2*_altitude_impact*_gravity+4.*_friction^2*_initspeed^2*_altitude_impact*_gravity-4.*_friction^2*_initspeed^2*_altitude_impact*_gravity*exp(2.*_ndist*_friction)-1.*_gravity^2*exp(4.*_ndist*_friction)+2.*_gravity^2*exp(2.*_ndist*_friction)+4.*_ndist*_gravity^2*exp(2.*_ndist*_friction)*_friction-1.*_gravity^2-4.*_ndist*_friction*_gravity^2-4.*_ndist^2*_friction^2*_gravity^2)^(1/2))^(1/2)*(1/(2.*_ndist^2*_friction^2*_initspeed^2+2.*_altitude_impact*_friction*_ndist*_gravity+_altitude_impact*_gravity-1.*_altitude_impact*_gravity*exp(2.*_ndist*_friction)+_ndist*(4.*_ndist^2*_friction^4*_initspeed^4+8.*_ndist*_friction^3*_initspeed^2*_altitude_impact*_gravity+4.*_friction^2*_initspeed^2*_altitude_impact*_gravity-4.*_friction^2*_initspeed^2*_altitude_impact*_gravity*exp(2.*_ndist*_friction)-1.*_gravity^2*exp(4.*_ndist*_friction)+2.*_gravity^2*exp(2.*_ndist*_friction)+4.*_ndist*_gravity^2*exp(2.*_ndist*_friction)*_friction-1.*_gravity^2-4.*_ndist*_friction*_gravity^2-4.*_ndist^2*_friction^2*_gravity^2)^(1/2))^(1/2)));

_low_solution;