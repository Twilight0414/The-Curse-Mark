function PlayerStateBonk(){
	// Movimento
	hSpeed = lengthdir_x(speedBonk, direction-180);
	vSpeed = lengthdir_y(speedBonk, direction-180);
	
	// max função que retorna o maior dos valores que você colocar nela
	moveDistanceRemaining = max(0, moveDistanceRemaining - speedBonk);
	var _collided = PlayerCollision();
	
	// Atualizando o sprite
	sprite_index = sPlayerHurt;
	image_index = CARDINAL_DIR + 2;
	
	// Muda a altura
	// sin = seno basicamente faz a curva
	// pi da um valor entre 0 e pi
	z = sin(((moveDistanceRemaining / distanceBonk) * pi)) * distanceBonkHeight;
	
	// Muda o state
	if(moveDistanceRemaining <= 0)
	{
		state = PlayerStateFree;
	}
}