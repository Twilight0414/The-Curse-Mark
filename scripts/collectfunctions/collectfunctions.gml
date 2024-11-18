function CollectCoins(_amont)
{
	global.playerMoney += _amont;
}

function CollectAmmo(_array)
{
	//_array = [type, amont]
	global.playerAmmo[_array[0]] += _array[1];
}