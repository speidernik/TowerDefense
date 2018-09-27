var in;
if(argument0 == "near"){
   in = instance_nearest(x+argument1,y+argument1,enemy);
}
return point_direction(x+argument1,y+argument1,in.x,in.y);
