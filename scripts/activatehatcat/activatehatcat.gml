function ActivateHatQuest()
{
	var _hasHat = (global.iLifted != noone) && (global.iLifted.object_index == oHat);
	switch (global.questStatus[? "TheHatQuest"])
	{
		case 0: //não iniciada
		{
			if (_hasHat)
			{
				//quest completa
				NewTextBox("Wow, você encontrou meu chapéu sem que eu tenha pedido!", 2);
				NewTextBox("Você é um verdadeiro herói.");
				global.questStatus[? "TheHatQuest"] = 2;
				with (oQuestiNPC) sprite_index = sQuestieHat;
				with (oHat) instance_destroy();
				global.iLifted =  noone;
				with (oPlayer)
				{
					spriteIdle = sPlayer;
					spriteRun = sPlayerRun;
				
				}
			}
			else
			{
				//offter quest
				NewTextBox("Hello there!! Você parece um bravo aventureiro!\nCom a capa e tudo mais.",2);
				NewTextBox("Você poderia me ajudar a encontrar meu chapéu perdido?",2,
				["4:É claro!","5:Esta tarefa está abaixo de mim"]);
			
			}
			
		}break;
		
		case 1: //quest em progresso
		{
			if (_hasHat)
			{
				//complete quest
				NewTextBox("Wow, você encontrou meu chapéu!", 2);
				NewTextBox("Você é um verdadeiro de fato.");
				global.questStatus[? "TheHatQuest"] = 2;
				with (oQuestiNPC) sprite_index = sQuestieHat;
				with (oHat) instance_destroy();
				global.iLifted =  noone;
				with (oPlayer)
				{
					spriteIdle = sPlayer;
					spriteRun = sPlayerRun;
				
				}
			
			}
			else
			{
				//clue reminder
				NewTextBox("Acho que deixei naquela caverna assustadora ali perto.", 2);
				NewTextBox("Você pode precisar de alguns itens para chegar lá.");

				
			}
		}break;
		
		case 2: //quest completa
		{
			NewTextBox("Obrigado novamente!");
		
		}break;
	}
}