function PlayerAnimateSprite(){
	// Atualiza o sprite
	// mostra quantos frames temos em uma animação especifica dentro do sprite
	var _totalFrames = sprite_get_number(sprite_index)/4;
	image_index = localFrame + (CARDINAL_DIR * _totalFrames);
	localFrame += sprite_get_speed(sprite_index) / FRAME_RATE;

	// Se a animação for fazer um loop na proxima etapa do jogo
	if (localFrame >= _totalFrames)
	{
		animationEnd = true;
		localFrame -= _totalFrames;
	
	} else animationEnd = false;

}