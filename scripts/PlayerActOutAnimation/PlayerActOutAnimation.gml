/// @description PlayerActOutAnimation(Sprite, EndScript)
/// @arg Sprite
/// @arg EndScript
function PlayerActOutAnimation(){
	// Executar uma animação e, opcionalmente, Executar um script quando a animação terminar
	state = PlayerStateAct;
	sprite_index = argument[0];
	if (argument_count > 1) animationEndScript = argument[1];
	localFrame = 0;
	image_index = 0;
	PlayerAnimateSprite();
}
