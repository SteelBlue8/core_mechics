import crafttweaker.api.FurnaceManager;
import crafttweaker.api.StoneCutterManager;
import crafttweaker.api.BlastFurnaceManager;

craftingTable.removeRecipe(<item:immersiveengineering:cokebrick>);
craftingTable.removeRecipe(<item:immersiveengineering:blastbrick>);

<recipetype:create:mechanical_crafting>.addRecipe("cokebrick", <item:immersiveengineering:cokebrick>*9,[
  [<item:minecraft:air>,<item:minecraft:air>,<item:contenttweaker:heatproof_brick>,<item:minecraft:air>,<item:minecraft:air>],
  [<item:minecraft:air>,<item:contenttweaker:heatproof_brick>,<item:minecraft:brick>,<item:contenttweaker:heatproof_brick>,<item:minecraft:air>],
  [<item:contenttweaker:heatproof_brick>,<item:minecraft:brick>,<item:contenttweaker:heatproof_brick>,<item:minecraft:brick>,<item:contenttweaker:heatproof_brick>],
  [<item:minecraft:air>,<item:contenttweaker:heatproof_brick>,<item:minecraft:brick>,<item:contenttweaker:heatproof_brick>,<item:minecraft:air>],
  [<item:minecraft:air>,<item:minecraft:air>,<item:contenttweaker:heatproof_brick>,<item:minecraft:air>,<item:minecraft:air>]
]);

<recipetype:create:mechanical_crafting>.addRecipe("blastbrick", <item:immersiveengineering:blastbrick>*9,[
  [<item:minecraft:air>,<item:contenttweaker:heatproof_brick>,<item:minecraft:magma_block>,<item:contenttweaker:heatproof_brick>,<item:minecraft:air>],
  [<item:contenttweaker:heatproof_brick>,<item:contenttweaker:heatproof_brick>,<item:minecraft:nether_brick>,<item:contenttweaker:heatproof_brick>,<item:contenttweaker:heatproof_brick>],
  [<item:minecraft:magma_block>,<item:minecraft:nether_brick>,<item:minecraft:magma_block>,<item:minecraft:nether_brick>,<item:minecraft:magma_block>],
  [<item:contenttweaker:heatproof_brick>,<item:contenttweaker:heatproof_brick>,<item:minecraft:nether_brick>,<item:contenttweaker:heatproof_brick>,<item:contenttweaker:heatproof_brick>],
  [<item:minecraft:air>,<item:contenttweaker:heatproof_brick>,<item:minecraft:magma_block>,<item:contenttweaker:heatproof_brick>,<item:minecraft:air>]
]);

<recipetype:create:compacting>.addRecipe("heatbrick", "superheated", <item:contenttweaker:heatproof_brick>, [<item:minecraft:brick>, <item:create:powdered_obsidian>*2,<item:create:cinder_flour>], [<fluid:minecraft:lava>*250]);

<recipetype:minecraft:blasting>.removeRecipe(<item:mekanism:ingot_osmium>);
<recipetype:minecraft:smelting>.removeRecipe(<item:mekanism:ingot_osmium>);
craftingTable.removeRecipe(<item:mekanism:dust_osmium>);
<recipetype:immersiveengineering:crusher>.removeRecipe(<item:mekanism:dust_osmium>);
<recipetype:create:crushing>.removeRecipe(<item:create:crushed_osmium_ore>);
<recipetype:create:milling>.removeRecipe(<item:create:crushed_osmium_ore>);
<recipetype:create:splashing>.removeRecipe(<item:mekanism:nugget_osmium>);

<recipetype:immersiveengineering:blueprint>.addRecipe("stator","components",
  [<item:immersiveengineering:wirecoil_copper>,<tag:items:forge:plates/steel>*4],
  <item:contenttweaker:stator>
);

<recipetype:immersiveengineering:blueprint>.addRecipe("rotor","components",
  [<tag:items:forge:ingots/iron>*2,<tag:items:forge:rods/iron>],
  <item:contenttweaker:rotor>
);

craftingTable.addShapeless("motor",<item:contenttweaker:motor>,
  [<item:contenttweaker:rotor>,<item:contenttweaker:stator>]
);

craftingTable.addShapeless("billetfromblock",<item:dustrial_decor:cast_iron_billet>*9,
  [<item:dustrial_decor:cast_iron_block>]
);

<recipetype:immersiveengineering:blast_furnace>.addRecipe("osmium_to_crushed", <item:mekanism:osmium_ore>, 2400, <item:create:crushed_osmium_ore>*2, <item:immersiveengineering:slag>);
<recipetype:immersiveengineering:crusher>.addRecipe("osmium_crushed_to_dust", <item:create:crushed_osmium_ore>, 500, <item:mekanism:dust_osmium>, <item:mekanism:dust_osmium> % 50);

recipes.addJSONRecipe("alcasing",{
  "type":"create:sequenced_assembly",
  "ingredient":{"item":"immersiveengineering:sheetmetal_aluminum"},
  "transitionalItem":{"item":"contenttweaker:aluminium_frame"},

  "sequence":[
    {"type":"create:deploying",
    "ingredients":[
      {"item":"contenttweaker:aluminium_frame"},
      {"tag":"forge:plates/aluminum"}
    ],
    "results":[{"item":"contenttweaker:aluminium_frame"}]
    },

    {"type":"create:deploying",
    "ingredients":[
      {"item":"contenttweaker:aluminium_frame"},
      {"item":"immersiveengineering:stick_aluminum"}
    ],
    "results":[{"item":"contenttweaker:aluminium_sheet"}]
    },

    {"type":"create:deploying",
    "ingredients":[
      {"item":"contenttweaker:aluminium_frame"},
      {"tag":"forge:plates/aluminum"}
    ],
    "results":[{"item":"contenttweaker:aluminium_frame"}]
    },

    {"type":"create:deploying",
    "ingredients":[
      {"item":"contenttweaker:aluminium_frame"},
      {"item":"immersiveengineering:stick_aluminum"}
    ],
    "results":[{"item":"contenttweaker:aluminium_frame"}]
    },

    {"type":"create:pressing",
    "ingredients":[
      {"item":"contenttweaker:aluminium_frame"}
    ],
    "results":[{"item":"contenttweaker:aluminium_frame"}]
    }
  ],

  "results":[{"item":"contenttweaker:aluminium_casing"}],
  "loops":2
});


recipes.addJSONRecipe("lcdchips",{
  "type":"create:sequenced_assembly",
  "ingredient":{"item":"immersiveengineering:circuit_board"},
  "transitionalItem":{"item":"contenttweaker:lcd_chip_wip"},

  "sequence":[
    {"type":"create:pressing",
    "ingredients":[
      {"item":"contenttweaker:lcd_chip_wip"}
    ],
    "results":[{"item":"lcd_chip_wip"}]
    },

    {"type":"create:deploying",
    "ingredients":[
      {"item":"contenttweaker:lcd_chip_wip"},
      {"item":"immersiveengineering:ingot_hop_graphite"}
    ],
    "results":[{"item":"contenttweaker:lcd_chip_wip"}]
    },

    {"type":"create:deploying",
    "ingredients":[
      {"item":"contenttweaker:lcd_chip_wip"},
      {"item":"immersiveengineering:wire_electrum"}
    ],
    "results":[{"item":"contenttweaker:lcd_chip_wip"}]
    },

    {"type":"create:deploying",
    "ingredients":[
      {"item":"contenttweaker:lcd_chip_wip"},
      {"item":"create:polished_rose_quartz"}
    ],
    "results":[{"item":"contenttweaker:lcd_chip_wip"}]
    }
  ],

  "results":[{
    "item":"contenttweaker:lcd_chip",
    "count":4
  }],
  "loops":1
});

stoneCutter.addRecipe("sign_radiation", <item:contenttweaker:sign_radiation>, <item:dustrial_decor:sheet_metal>);
stoneCutter.addRecipe("sign_flammable", <item:contenttweaker:sign_flammable>, <item:dustrial_decor:sheet_metal>);
stoneCutter.addRecipe("sign_explosive", <item:contenttweaker:sign_explosive>, <item:dustrial_decor:sheet_metal>);
stoneCutter.addRecipe("sign_warning", <item:contenttweaker:sign_warning>, <item:dustrial_decor:sheet_metal>);
stoneCutter.addRecipe("sign_voltage", <item:contenttweaker:sign_voltage>, <item:dustrial_decor:sheet_metal>);

stoneCutter.addRecipe("sign_radiation_rusted", <item:contenttweaker:sign_radiation_rusted>, <item:dustrial_decor:rusty_sheet_metal>);
stoneCutter.addRecipe("sign_flammable_rusted", <item:contenttweaker:sign_flammable_rusted>, <item:dustrial_decor:rusty_sheet_metal>);
stoneCutter.addRecipe("sign_explosive_rusted", <item:contenttweaker:sign_explosive_rusted>, <item:dustrial_decor:rusty_sheet_metal>);
stoneCutter.addRecipe("sign_warning_rusted", <item:contenttweaker:sign_warning_rusted>, <item:dustrial_decor:rusty_sheet_metal>);
stoneCutter.addRecipe("sign_voltage_rusted", <item:contenttweaker:sign_voltage_rusted>, <item:dustrial_decor:rusty_sheet_metal>);