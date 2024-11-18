function SlimeWander()
{
	sprite_index = sprMove;
	
	//Em um destino ou desistiu?
	if ((x == xTo) && (y == yTo)) or (timePassed > enemyWanderDistance / enemySpeed)
	{
		hSpeed = 0;
		vSpeed = 0;
		//Termine sua animação de movimento
		if (image_index < 1)
		{
			image_speed = 0.0;
			image_index = 0;
		}
		
		//Definir um novo alvo de destino
		if (++wait >= waitDuration)
		{
			wait = 0;
			timePassed = 0;
			dir = point_direction(x,y,xstart,ystart) + irandom_range(-45,45);
			xTo = x + lengthdir_x(enemyWanderDistance, dir);
			yTo = y + lengthdir_y(enemyWanderDistance, dir);
		}
	}
	else //Mova-se para um novo destino
	{
		timePassed++;
		image_speed = 1.0;
		var _distanceToGo = point_distance(x,y,xTo,yTo);
		var _speedThisFrame = enemySpeed;
		if (_distanceToGo < enemySpeed) _speedThisFrame = _distanceToGo;
		dir = point_direction(x,y,xTo,yTo);
		hSpeed = lengthdir_x(_speedThisFrame,dir);
		vSpeed = lengthdir_y(_speedThisFrame,dir);
		if (hSpeed != 0) image_xscale = sign(hSpeed);
		
		//Colisão e movimento
		EnemyTileCollision();
	}
	
	//Check for Aggro
	if (++aggroCheck >= aggroCheckDuration)
	{
		aggroCheck = 0;
		if (instance_exists(oPlayer)) && (point_distance(x,y,oPlayer.x,oPlayer.y) <= enemyAggroRadius)
		{
			state = ENEMYSTATE.CHASE;
			target = oPlayer;
		}
	}
}

function SlimeChase()
{
	sprite_index = sprMove;
	
	if (instance_exists(target))
	{
		xTo = target.x;
		yTo = target.y;
		
		var _distanceToGo = point_distance(x,y,xTo,yTo);
		image_speed = 1.0;
		dir = point_direction(x,y,xTo,yTo);
		if (_distanceToGo > enemySpeed)
		{
			hSpeed = lengthdir_x(enemySpeed, dir);
			vSpeed = lengthdir_y(enemySpeed, dir);
		}
		else
		{
			hSpeed = lengthdir_x(_distanceToGo, dir);
			vSpeed = lengthdir_y(_distanceToGo, dir);
		}
		if (hSpeed != 0) image_xscale = sign(hSpeed);
		//Colidir e Mover
		EnemyTileCollision();
	}
	
	//verifica se está perto o suficiente para lançar um ataque
	if (instance_exists(target)) && (point_distance(x,y,target.x,target.y) <= enemyAttackRadius)
	{
		state = ENEMYSTATE.ATTACK;
		sprite_index = sprAttack;
		image_index = 0;
		image_speed = 1.0;
		//alvo 8px além do player
		xTo += lengthdir_x(8,dir);
		yTo += lengthdir_y(8,dir);
	}
}

function SlimeAttack()
{
//Quão rapido se move
var _spd = enemySpeed;

//Não se mova enquanto ainda se prepara para pular
if (image_index < 2) _spd = 0;

//Congela a animação enquanto estiver no ar e também após o término do pouso
if (floor(image_index) == 3) || (floor(image_index) == 5) image_speed = 0;

//Quão longe temos que pular
var _distanceToGo = point_distance(x,y,xTo,yTo);

//Comece a aterrissar no final da animação quando estivermos quase terminando
if (_distanceToGo < 4) && (image_index < 5) image_speed = 1.0;

//Move
if (_distanceToGo > _spd)
{
	dir = point_direction(x,y,xTo,yTo);
	hSpeed = lengthdir_x(_spd,dir);
	vSpeed = lengthdir_y(_spd,dir);
	if (hSpeed != 0) image_xscale = sign(hSpeed);
	
	//Commit to move and stop moving if we hit a wall
	if (EnemyTileCollision() == true)
	{
		xTo = x;
		yTo = y;
	}
}
else
{
	x = xTo;
	y = yTo;
	if (floor(image_index) == 5)
	{
		stateTarget = ENEMYSTATE.CHASE;
		stateWaitDuration = 15;
		state = ENEMYSTATE.WAIT;
	}
}
}

function SlimeHurt()
{
	sprite_index = sprHurt;
	var _distanceToGo = point_distance(x,y,xTo,yTo);
	if (_distanceToGo > enemySpeed)
	{
		image_speed = 1.0;
		dir = point_direction(x,y,xTo,yTo);
		hSpeed = lengthdir_x(enemySpeed, dir);
		vSpeed = lengthdir_y(enemySpeed, dir);
		if (hSpeed != 0) image_xscale = -sign(hSpeed);
		
		
		//Colide e mova-se, se houver uma colisão, pare o knockback
		if (EnemyTileCollision())
		{
			xTo = x;
			yTo = y;
		}
	}
	else
	{
		x = xTo;
		y = yTo;
		if (statePrevious != ENEMYSTATE.ATTACK) state = statePrevious; else state = ENEMYSTATE.CHASE;
	}
}

function SlimeDie()
{
	sprite_index = sprDie;
	image_speed = 1.0;
	var _distanceToGo = point_distance(x,y,xTo,yTo);
	if (_distanceToGo > enemySpeed)
	{
		dir = point_direction(x,y,xTo,yTo);
		hSpeed = lengthdir_x(enemySpeed,dir);
		vSpeed = lengthdir_y(enemySpeed,dir);
		if (hSpeed !=0) image_xscale = -sign(hSpeed);
		
		//Colisão e movimento
		EnemyTileCollision();
	}
	else
	{
		x = xTo;
		y = yTo;
	}
	if (image_index + (sprite_get_speed(sprite_index) / game_get_speed(gamespeed_fps)) >= image_number)
	{
		instance_destroy();
	}
}