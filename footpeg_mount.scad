footpeg_assembly();


module footpeg_mount(){
translate([15,52,30])rotate([0,90,90]) bracket_offset(20,15);
translate([0,0,15]) rotate([90,0,0]) bracket_offset(10,15);
hull(){
for(x=[0,30]){
for(y=[0,50]){
 translate([x,y,0]) cylinder(r=3,h=30);
}//end hull
}//end x loop
}//end y loop
}//end part

module footpeg_assembly(){
difference(){
footpeg_mount();
translate([15,28,22.5]) rotate([180,0,-90]) motor_cutout();
}
}

module motor_cutout(){
union(){
cube([43,23,16],center=true);
translate([11.5,0,-8.5]) motor();
translate([25,0,4]) cube([7,7,26],center=true);
translate([-2,0,4]) cube([7,7,26],center=true);
translate([-10.25,0,5]) cylinder(r=5,h=25,center=true);
}//end union

}

module motor(){
//motor
difference(){
cylinder(r=11.5,h=45);
translate([20,0,22.5]) cube([20,20,45],center=true);
translate([-20,0,22.5]) cube([20,20,45],center=true);
}//end diff
}

module bracket_offset(thickness,offset){
difference(){
union(){
translate([0,-14,0]) cube([thickness,28,offset]);
translate([0,0,offset]) rotate([0,90,0] ) cylinder(r=14,h=thickness);
}//end union
translate([-1,0,offset]) rotate([0,90,0] ) cylinder(r=4,h=thickness+1);
}//end diff
}// end part

