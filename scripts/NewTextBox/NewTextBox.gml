function NewTextBox(){
	/// @arg Message
	/// @arg Background
	/// @arg [Responses]
	
	var _obj;
	if (instance_exists(oText)) _obj = oTextQueued; else _obj = oText;
	with (instance_create_layer(0,0,"Instances",_obj))
	{
		Message = argument[0];
		if (instance_exists(other)) originInstance = other.id else originInstance = noone;
		if (argument_count > 1) background = argument[1]; else background = 1;
		if (argument_count > 2)
		{
			//trim markers from responces
			responses = argument[2];
			for (var i = 0; i < array_length_1d(responses); i++)
			{
				var _markerPosition = string_pos(":",responses[i]);
				responseScripts[i] = string_copy(responses[i],1,_markerPosition-1);
				responseScripts[i] = real(responseScripts[i]);
				responses[i] = string_delete(responses[i],1,_markerPosition);
				brackpoint = 10;
			}
		}
		else
		{
			responses = [-1];
			responseScripts = [-1];
		}
	}
	with (oPlayer)
	{
		if (state != PlayerStateLocked)
		{
			lastState = state;
			state = PlayerStateLocked;
		}
	}
}