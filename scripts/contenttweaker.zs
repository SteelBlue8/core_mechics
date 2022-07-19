#loader contenttweaker
import mods.contenttweaker.item.ItemBuilder;
import mods.contenttweaker.item.tool.ItemBuilderTool;

import mods.contenttweaker.fluid.FluidBuilder;

import mods.contenttweaker.block.BlockBuilder;
import mods.contenttweaker.block.basic.BlockBuilderBasic;
import mods.contenttweaker.block.pillar.BlockBuilderPillarRotatable;

import mods.contenttweaker.fluid.FluidBuilder;

new ItemBuilder().build("heatproof_brick");
new ItemBuilder().build("rotor");
new ItemBuilder().build("stator");
new ItemBuilder().build("motor");
new ItemBuilder().build("aluminium_frame");
new ItemBuilder().build("lcd_chip");
new ItemBuilder().build("lcd_chip_wip");
new ItemBuilder().build("steel_frame");
new ItemBuilder().build("sign_radiation");
new ItemBuilder().build("sign_radiation_rusted");
new ItemBuilder().build("sign_voltage");
new ItemBuilder().build("sign_voltage_rusted");
new ItemBuilder().build("sign_warning");
new ItemBuilder().build("sign_warning_rusted");
new ItemBuilder().build("sign_explosive");
new ItemBuilder().build("sign_explosive_rusted");
new ItemBuilder().build("sign_flammable");
new ItemBuilder().build("sign_flammable_rusted");

new BlockBuilder()
  .withHardnessAndResistance(1f, 0.5f)
  .setRequiresTool()
  .withHarvestTool(<tooltype:pickaxe>)
  .withHarvestLevel(2)
  .build("aluminium_casing");
