function DialogueResponses(){
	/// @arg Response
	
	switch(argument0)
	{
		case 0: break;
		case 1: NewTextBox("Você deu a resposta A!", 1); break;
		case 2: NewTextBox("Você deu a resposta B! Mais alguma resposta?", 1, ["3:Sim!","0:Não."]); break;
		case 3: NewTextBox("Obrigado por suas respostas!",0); break;
		case 4:
		{
			NewTextBox("Obrigado!",2);
			NewTextBox("Acho que deixei naquela caverna assustadora ali perto.", 2);
			global.questStatus[? "TheHatQuest"] = 1;
		}break;
		case 5: NewTextBox("Poxa, que pena. :(",2); break;
		case 6: PurchaseItem(activate.item, activate.itemAmount, activate.itemCost); break;
		default: break;
	}
}