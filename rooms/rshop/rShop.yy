{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rShop",
  "isDnd": false,
  "volume": 1.0,
  "parentRoom": {
    "name": "rParent",
    "path": "rooms/rParent/rParent.yy",
  },
  "views": [
    {"inherit":true,"visible":true,"xview":0,"yview":0,"wview":320,"hview":180,"xport":0,"yport":0,"wport":640,"hport":360,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":true,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":true,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":true,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":true,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":true,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":true,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":true,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
  ],
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_15E23D35","properties":[],"isDnd":false,"objectId":{"name":"oPlayer","path":"objects/oPlayer/oPlayer.yy",},"inheritCode":true,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":{"name":"inst_15E23D35","path":"rooms/rParent/rParent.yy",},"frozen":false,"ignore":false,"inheritItemSettings":false,"x":152.0,"y":145.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_3E7F8947","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetRoom","path":"objects/oRoomExit/oRoomExit.yy",},"objectId":{"name":"oRoomExit","path":"objects/oRoomExit/oRoomExit.yy",},"value":"rVillage",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetX","path":"objects/oRoomExit/oRoomExit.yy",},"objectId":{"name":"oRoomExit","path":"objects/oRoomExit/oRoomExit.yy",},"value":"248",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetY","path":"objects/oRoomExit/oRoomExit.yy",},"objectId":{"name":"oRoomExit","path":"objects/oRoomExit/oRoomExit.yy",},"value":"104",},
          ],"isDnd":false,"objectId":{"name":"oRoomExit","path":"objects/oRoomExit/oRoomExit.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":0.5,"scaleY":0.5,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":144.0,"y":144.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_38481F17","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"entityActivateScript","path":"objects/pEntity/pEntity.yy",},"objectId":{"name":"pEntity","path":"objects/pEntity/pEntity.yy",},"value":"NewTextBox",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"entityActivateArgs","path":"objects/pEntity/pEntity.yy",},"objectId":{"name":"pEntity","path":"objects/pEntity/pEntity.yy",},"value":"[\"Você vai precisar de alguns dos meus produtos se\\nquiser passar por aquela caverna assustadora!\",2]",},
          ],"isDnd":false,"objectId":{"name":"oShopkeeper","path":"objects/oShopkeeper/oShopkeeper.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":3,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":112.0,"y":112.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_941227C","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"itemCost","path":"objects/oShopItem/oShopItem.yy",},"objectId":{"name":"oShopItem","path":"objects/oShopItem/oShopItem.yy",},"value":"20",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"itemAmount","path":"objects/oShopItem/oShopItem.yy",},"objectId":{"name":"oShopItem","path":"objects/oShopItem/oShopItem.yy",},"value":"5",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"entityActivateArgs","path":"objects/pEntity/pEntity.yy",},"objectId":{"name":"pEntity","path":"objects/pEntity/pEntity.yy",},"value":"[\"Conjunto de Bombas ($20)\\nÓtimo para explodir coisas!\",1,[\"6:Comprar\",\"0:Não Obrigado\"]]",},
          ],"isDnd":false,"objectId":{"name":"oShopItem","path":"objects/oShopItem/oShopItem.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":1,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":112.0,"y":64.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_4EE7A0CC","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"itemCost","path":"objects/oShopItem/oShopItem.yy",},"objectId":{"name":"oShopItem","path":"objects/oShopItem/oShopItem.yy",},"value":"30",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"item","path":"objects/oShopItem/oShopItem.yy",},"objectId":{"name":"oShopItem","path":"objects/oShopItem/oShopItem.yy",},"value":"ITEM.BOW",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"entityActivateArgs","path":"objects/pEntity/pEntity.yy",},"objectId":{"name":"pEntity","path":"objects/pEntity/pEntity.yy",},"value":"[\"Arco e Flechas ($30)\\nMate inimigos a loga distância!\",1,[\"6:Comprar\",\"0:Não Obrigado\"]]",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"itemAmount","path":"objects/oShopItem/oShopItem.yy",},"objectId":{"name":"oShopItem","path":"objects/oShopItem/oShopItem.yy",},"value":"15",},
          ],"isDnd":false,"objectId":{"name":"oShopItem","path":"objects/oShopItem/oShopItem.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":2,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":144.0,"y":64.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_6C62D78C","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"itemCost","path":"objects/oShopItem/oShopItem.yy",},"objectId":{"name":"oShopItem","path":"objects/oShopItem/oShopItem.yy",},"value":"50",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"item","path":"objects/oShopItem/oShopItem.yy",},"objectId":{"name":"oShopItem","path":"objects/oShopItem/oShopItem.yy",},"value":"ITEM.HOOK",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"entityActivateArgs","path":"objects/pEntity/pEntity.yy",},"objectId":{"name":"pEntity","path":"objects/pEntity/pEntity.yy",},"value":"[\"Hook Shot ($50)\\nÓtimo para atravessar penhascos!\",1,[\"6:Comprar\",\"0:Não Obrigado\"]]",},
          ],"isDnd":false,"objectId":{"name":"oShopItem","path":"objects/oShopItem/oShopItem.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":3,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":176.0,"y":64.0,},
      ],"visible":true,"depth":0,"userdefinedDepth":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"gridX":16,"gridY":16,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Col","tilesetId":{"name":"tCol","path":"tilesets/tCol/tCol.yy",},"x":0,"y":0,"tiles":{"TileDataFormat":1,"SerialiseWidth":20,"SerialiseHeight":12,"TileCompressedData":[
-85,0,-9,1,-11,0,1,1,-7,0,1,1,-11,0,1,1,-7,0,1,1,
-11,0,1,1,-7,0,1,1,-11,0,1,1,-7,0,1,1,-11,0,-4,1,
1,0,-4,1,-14,0,-3,1,-29,0,],},"visible":true,"depth":100,"userdefinedDepth":false,"inheritLayerDepth":true,"inheritLayerSettings":true,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"TilesUpper","tilesetId":{"name":"tTiles","path":"tilesets/tTiles/tTiles.yy",},"x":0,"y":0,"tiles":{"TileDataFormat":1,"SerialiseWidth":20,"SerialiseHeight":12,"TileCompressedData":[
-86,-2147483648,1,128,-5,129,1,130,-147,-2147483648,],},"visible":true,"depth":200,"userdefinedDepth":false,"inheritLayerDepth":true,"inheritLayerSettings":true,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"TilesMain","tilesetId":{"name":"tTiles","path":"tilesets/tTiles/tTiles.yy",},"x":0,"y":0,"tiles":{"TileDataFormat":1,"SerialiseWidth":20,"SerialiseHeight":12,"TileCompressedData":[
-45,-2147483648,9,173,174,175,176,174,175,176,177,178,-11,-2147483648,1,193,-7,189,1,193,
-11,-2147483648,1,193,-7,189,1,193,-11,-2147483648,1,193,-7,189,1,193,-11,-2147483648,1,193,
-7,189,1,193,-11,-2147483648,1,193,-7,189,1,193,-11,-2147483648,1,193,-7,189,1,193,
-11,-2147483648,9,203,204,204,205,189,207,204,204,208,-46,-2147483648,],},"visible":true,"depth":300,"userdefinedDepth":false,"inheritLayerDepth":true,"inheritLayerSettings":true,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","spriteId":null,"colour":4278190080,"x":0,"y":0,"htiled":false,"vtiled":false,"hspeed":0.0,"vspeed":0.0,"stretch":false,"animationFPS":15.0,"animationSpeedType":0,"userdefinedAnimFPS":false,"visible":true,"depth":400,"userdefinedDepth":false,"inheritLayerDepth":true,"inheritLayerSettings":true,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
  ],
  "inheritLayers": true,
  "creationCodeFile": "",
  "inheritCode": true,
  "instanceCreationOrder": [
    {"name":"inst_15E23D35","path":"rooms/rShop/rShop.yy",},
    {"name":"inst_3E7F8947","path":"rooms/rShop/rShop.yy",},
    {"name":"inst_38481F17","path":"rooms/rShop/rShop.yy",},
    {"name":"inst_941227C","path":"rooms/rShop/rShop.yy",},
    {"name":"inst_4EE7A0CC","path":"rooms/rShop/rShop.yy",},
    {"name":"inst_6C62D78C","path":"rooms/rShop/rShop.yy",},
  ],
  "inheritCreationOrder": true,
  "sequenceId": null,
  "roomSettings": {
    "inheritRoomSettings": true,
    "Width": 320,
    "Height": 180,
    "persistent": false,
  },
  "viewSettings": {
    "inheritViewSettings": true,
    "enableViews": true,
    "clearViewBackground": false,
    "clearDisplayBuffer": true,
  },
  "physicsSettings": {
    "inheritPhysicsSettings": true,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "parent": {
    "name": "Rooms",
    "path": "folders/Rooms.yy",
  },
}