/// @description Throw


if balls > 0 {
	with instance_create_depth(argument0, argument1, 0, obj_ball){
		direction = argument2;
	}
	balls -= 1;
	//TODO make the instance direction match an analogue stick direction
}