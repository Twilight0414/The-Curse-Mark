function PurchaseItem(_item, _amount, _cost)
{
	if (global.playerMoney >= _cost)
	{
		global.playerHasAnyItems = true;
		global.playerItemUnlocked[_item] = true;
		global.playerAmmo[_item] += _amount;
		global.playerMoney -= _cost;
		global.playerEquipped = _item;
		instance_destroy(activate);
		
		var _desc = "";
		switch (_item)
		{
			case ITEM.BOW: _desc = "O Arco!\nAtire com a tecla de ativação para causar dano aos inimigos,\nencontre munição no mundo!"; break;
			case ITEM.BOMB: _desc = "Bombas!\nAtive para acender o pavio e, em seguida, jogue novamente.\nDestrua os inimigos\ne certas grandes pedras bloqueando cavernas!"; break;
			case ITEM.HOOK: _desc = "O gancho!\nAtive para prender as coisas em você\nou em você nas coisas!\nUse com cuidado!"; break;
			default: _desc = "Item não encontrado!";break;
		}
		NewTextBox(_desc,1);
	}
	else
	{
		NewTextBox("Moedas Insuficientes...",1);
	}
}