module bracket_offset(){
difference(){
union(){
translate([0,-14,0]) cube([10,28,20]);
translate([0,0,20]) rotate([0,90,0] ) cylinder(r=14,h=10);
}//end union
translate([-1,0,20]) rotate([0,90,0] ) cylinder(r=4,h=11);
}//end diff
}// end part

