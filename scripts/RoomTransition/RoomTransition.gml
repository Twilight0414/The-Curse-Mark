function RoomTransition(){
	/// @description RoomTransition(type, targetRoom)
	///@arg Type
	///@arg TargetRoom
	
	if (!instance_exists(oTransition))
	{
		with (instance_create_depth(0,0,-9999,oTransition))
		{
			type = argument[0];
			target = argument[1];
		}
	}else show_debug_message("Tentando fazer a transição enquanto a transição esta acontecendo!");
}