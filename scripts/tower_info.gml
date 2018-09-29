if(argument0 >= 0 && argument0 < 16){
   var tower_name = "";
   var tower_desc = "";
   var tower_id = -1;
   switch(argument0){
      case 0: tower_id = tower_mage; tower_name = "Magician";tower_desc = "A slow shooting tower that deals heavy damage and can be upgraded into various forms." break;
   
      case 1: tower_id = tower_fireMage; tower_name = "Fire Mage";tower_desc = "A fast shooting tower that deals small damage and can be upgraded into magma tower forms." break;
   
      case 2: tower_id = tower_magmaMage; tower_name = "Magma Mage";tower_desc = "A slow shooting tower that deals heavy damage." break;
   }
   
   if(tower_name != "" && tower_desc != "" && tower_id != -1){
      draw_text(view_wport-356,400,tower_name);
      draw_set_font(font_ui);
      draw_text_ext(view_wport-356,432,tower_desc,14,340);
      var h = string_height_ext(tower_desc,14,340)+16;
      draw_text(view_wport-356,432+h,"Damage: ");
      draw_text(view_wport-150,432+h,"Speed: ");
   }
}
