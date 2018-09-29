var spr = 0;
switch(argument0){
   case 0: spr = s_tower_mage; break;
   case 0.1: spr = s_tower_fireMage; break;
   case 0.11: spr = s_tower_magmaMage; break;
   default: spr = -1;break;
}
if(spr != -1){
   draw_sprite_stretched(spr,0,argument1,argument2,argument3,argument3);
}
