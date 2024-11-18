/// @description ScreenShake(magnitude,frames)
/// @arg Magnitude define a força do tremor (distance range)
/// @arg Frames define a duração da vibração em frames (60 = 1 second)
function ScreenShake(){
	
	with (global.iCamera){
		
		if (argument0 > shakeRemain)
		{
			shakeMagnitude = argument0;
			shakeRemain = shakeMagnitude;
			shakeLength = argument1;
		}
	}
}