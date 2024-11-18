function PlayerStateFree(){
	// Movimento
	// lengthdir_x() função onde podemos inserir um comprimento e uma direção
	hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
	vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);
	
	PlayerCollision();
	
	// Atualiza o sprite
	// armazena o sprite que esta atualmente
	var _oldSprite = sprite_index
	if (inputMagnitude != 0)
	{
		direction = inputDirection; // direction variavel embutida que da pra usar com velocidade ou apenas armazena um numero
		sprite_index = spriteRun;
		
	}else sprite_index = spriteIdle;
	
	if (_oldSprite != sprite_index) localFrame = 0;
	
	// Atualizando Image Index
	PlayerAnimateSprite();
	
	// Attack key logic
	if (keyAttack)
	{
		state = PlayerStateAttack;
		stateAttack = AttackSword;
	}
	
	// Activate key logic
	if (keyActivate)
	{
		//1. Verifica se há uma entidade para ativar
		//2. Se não houver nada ou se houver algo, mas não tiver script
			//2a. Se estivermos carregando algo, jogue-o! 
			//2b. Caso contrário, Role!
		//3. Caso contrário para que haja algo como um script para ativar!
		//4. Se a coisa que ativamos for um NPC, faça-o virado para nós!
		
		/*
		Calcula a quantidade que tem que se mover ao longo do eixo x
		para mover 10 pixel em qualquer direção
		*/
		var _activateX = x + lengthdir_x(10, direction);
		var _activateY = y + lengthdir_y(10, direction);
		var _activateSize = 4;
		var _activateList = ds_list_create();
		activate = noone;
		var _entitiesFound = collision_rectangle_list(
			_activateX - _activateSize,
			_activateY - _activateSize,
			_activateX + _activateSize,
			_activateY + _activateSize,
			pEntity,
			false,
			true,
			_activateList,
			true
		);
		
		//Se a primeira instância que encontramos for nossa entidade levantada então a que estamos carregando acima de nossa cabeça ou não tem script: tente o proximo
		while (_entitiesFound > 0)
		{
			var _check = _activateList[| --_entitiesFound];
			if (_check != global.iLifted) && (_check.entityActivateScript != -1)
			{
				activate = _check;
				break;
			}
		}
		
		ds_list_destroy(_activateList);
		
		if (activate == noone)
		{
			//Jogue algo se segurado, caso contrário, role
			if (global.iLifted != noone)
			{
				PlayerThrow();	
			}
			else
			{
				state = PlayerStateRoll;
				moveDistanceRemaining = distanceRoll;
			}
		}
		else
		{
			// Ativa a entidade
			ScriptExecuteArray(activate.entityActivateScript, activate.entityActivateArgs);
			
			// Fazer um NPC ficar virado para o jogador
			if (activate.entityNPC)
			{
				with (activate)
				{
					direction = point_direction(x,y,other.x,other.y);
					image_index = CARDINAL_DIR
				}
			}
		}
	}
	
	if (keyItem) && (!keyActivate) && (global.playerHasAnyItems) && (global.playerEquipped != ITEM.NONE)
	{
		switch (global.playerEquipped)
		{
			case ITEM.BOMB: UseItemBomb();break;
			case ITEM.BOW: UseItemBow();break;
			case ITEM.HOOK: UseItemHook();break;
			default: break;
		}
	
	}
	
	//Ciclo de Itens
	if (global.playerHasAnyItems)
	{
		var _cycleDirection = keyItemSelectUp - keyItemSelectDown;
		if (_cycleDirection != 0)
		{
			do
			{
				global.playerEquipped += _cycleDirection;
				if (global.playerEquipped < 1) global.playerEquipped = ITEM.TYPE_COUNT-1;
				if (global.playerEquipped >= ITEM.TYPE_COUNT) global.playerEquipped = 1;
			}
			until (global.playerItemUnlocked[global.playerEquipped]);
		}
	}
}