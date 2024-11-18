function PlayerThrow(){
	with (global.iLifted)
	{
		lifted = false;
		persistent = false;
		z = 13;
		//throwPeakHeight valor da altura do arco
		throwPeakHeight = z + 10;
		throwDistance = entityThrowDistance;
		throwDistanceTravelled = 0;
		//throwStartPercent valor que determina onde estamos começando no arco de arremesso
		throwStartPercent = (13/throwPeakHeight) * 0.5;
		throwPercent = throwStartPercent;
		direction = other.direction;
		x += lengthdir_x(5,direction);
		y += lengthdir_y(5,direction);
		xstart = x;
		ystart = y;
		thrown = true;
	}
	PlayerActOutAnimation(sPlayerLift);
	
	global.iLifted = noone;
	spriteIdle = sPlayer;
	spriteRun = sPlayerRun;
}