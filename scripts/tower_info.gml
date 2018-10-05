if(argument0 >= 0 && argument0 < 16){
   var tower_name = "";
   var tower_desc = "";
   var tower_id = -1;
   //Info über Tower
   
   switch(argument0){
      case 0: tower_id = tower_mage; tower_name = "Magician";tower_desc = "A slow shooting tower that deals heavy damage and can be upgraded into various forms." break;
   
      case 0.1: tower_id = tower_fireMage; tower_name = "Fire Mage";tower_desc = "A fast shooting tower that deals little damage and can be upgraded into magma tower forms." break;
   
      case 0.11: tower_id = tower_magmaMage; tower_name = "Magma Mage";tower_desc = "A slow shooting tower that deals very heavy damage." break;
   }
   
   //Info Ausgeben
   if(tower_name != "" && tower_desc != "" && tower_id != -1){
      draw_text(view_wport-356,400,tower_name);
      draw_set_font(font_ui);
      draw_text_ext(view_wport-356,432,tower_desc,14,340);
      var h = string_height_ext(tower_desc,14,340)+16;
      draw_text(view_wport-356,432+h,"Damage: ");
      draw_text(view_wport-150,432+h,"Speed: ");
      
      //Upgrades
      for(var i = 300;i >= 60;i -= 60){
         draw_line_width(view_wport-i,240,view_wport-i,300,2);
      }
      for(var i = 60;i >= 0;i -= 60){
         draw_line_width(view_wport-300,240+i,view_wport-60,240+i,2);
      }
      
      if(floor(argument0*100) == argument0*100){var mag = 1000};
      if(floor(argument0*10) == argument0*10){var mag = 100};
      if(floor(argument0) == argument0){var mag = 10};
      
      for(var i = 1;i < 5;i ++){
         draw_tower(argument0+(i/(mag)),view_wport-360+2+i*60,242,58);
      }
   }
}
