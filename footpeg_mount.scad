module lower_outer(){
difference(){
union(){
rotate([15,0,-13]) translate([95,15,19]) rotate_extrude(convexity = 10) 2d_disk();
hull(){
translate([14,72,32]) cylinder(r=16,h=10);
translate([14,72,29]) rotate([15,0,-13]) cylinder(r=16,h=7);}
translate([-35,-14,14]) rotate([90,0,90]) cylinder(r=10,h=10);
}
translate([14,72,24]) rotate([0,0,0] ) cylinder(r=4.2,h=20);
translate([-45,-14,14]) rotate([90,0,90] ) cylinder(r=4.2,h=30);
translate([-43,-14,14]) rotate([90,0,90] ) cylinder(r=5.2,h=10);
translate([14,72,24]) rotate([0,0,0] ) cylinder(r=5.2,h=10);

rotate([0,0,-40]) translate([-3,-200,-30]) cube([250,400,100]);
translate([-25,-14,14]) rotate([90,0,90]) cylinder(r=18,h=15);
translate([-30,90,0]) cube([150,100,100]);
}
}

translate([0,0,-6]) rotate([-15,0,13]) lower_outer();

module 2d_disk(){
//translate([105,-4]) square([30,8]);
difference(){
translate([130,-10]) square([10,20]);
translate([140,0]) scale([1,2]) circle(r=5);
}
}

module footpeg_mount(){
//translate([0,72,76])rotate([0,90,90]) bracket_offset(10,14);
//translate([0,0,14]) rotate([90,0,0]) bracket_offset(10,14);
}//end part



