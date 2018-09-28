in = instance_nearest(x+16,y+16,enemy);
//show_debug_message(point_distance(x+16,y+16,in.x,in.y));
if(point_distance(x+16,y+16,in.x,in.y) <= argument0){
   return true;
}else{
   return false;
}
