/// @description sb_seek(x, y, weight)
/// @function sb_seek
/// @param x
/// @param  y
/// @param  weight
///Return vector2 for steering towards given point


var _target = vect2(argument[0], argument[1]);
var _weight = argument[2];

// subtract current position from target position and constrain to max_speed
var _desired_velocity = vect_scaler(vect_subtract(_target,position),max_speed);

return (vect_multr(vect_subtract(_desired_velocity,velocity),_weight));


