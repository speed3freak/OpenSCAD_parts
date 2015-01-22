g_thick = 10;

mount_bracket();

module mount_bracket(){
translate([19,0,0]) bracket_offset();
translate([-27,0,0]) bracket_offset();
bracket_plate();
}

module bracket_offset(){
difference(){
union(){
translate([0,-12,0]) cube([8,24,20]);
translate([0,0,20]) rotate([0,90,0] ) bracket_gear();
}//end union
translate([-1,0,20]) rotate([0,90,0] ) cylinder(r=4.3,h=9);
}//end diff
}// end part

module bracket_gear(){
union(){
cylinder(r=12.1,h=8);
for(a=[0:10:360]){
rotate([0,0,a]) translate([12,-.5,0]) cube([1.2,1,8]);
}//end for
}//end union
}

module bracket_plate(){
difference(){
union(){
for(x= [19,-19]){
for(y= [19,-19]){
hull(){
cylinder(r=25,h=g_thick);
translate([x,y,0]) cylinder(r=10,h=g_thick);
}//end y loop
}//end x loop
}//end hull
}//end union
cylinder(r=20,h=g_thick);
for(x= [19,-19]){
for(y= [19,-19]){
translate([x,y,0]) cylinder(r=3.3,h=g_thick);
translate([x,y,6]) cylinder(r=5.3,h=g_thick-6);
}//end y loop
}//end x loop
}// end diff
}// end part