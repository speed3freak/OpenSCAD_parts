module lower_outer(){
difference(){
union(){
rotate([15,0,-13]) translate([95,15,19]) rotate_extrude(convexity = 10) 2d_disk();
hull(){
translate([14,72,34]) cylinder(r=16,h=10);
translate([14,72,29]) rotate([15,0,-13]) cylinder(r=16,h=7);
}
translate([-35,-14,14]) rotate([90,0,90]) cylinder(r=10,h=10);
}
translate([14,72,24]) rotate([0,0,0] ) cylinder(r=4.2,h=20);
translate([-45,-14,14]) rotate([90,0,90] ) cylinder(r=4.2,h=30);
translate([-46,-14,14]) rotate([90,0,90] ) cylinder(r=6.6,h=10);
translate([14,72,26]) rotate([0,0,0] ) cylinder(r=6.6,h=10);
translate([14,77,44]) cylinder(r1=18,r2=25,h=15);
rotate([0,0,-40]) translate([-3,-200,-30]) cube([250,400,100]);
translate([-25,-14,14]) rotate([90,0,90]) cylinder(r=18,h=15);
translate([-30,87,0]) cube([150,100,100]);
}
}

//translate([0,0,-6]) rotate([-15,0,13]) lower_outer();

module 2d_disk(){
//translate([105,-4]) square([30,8]);
difference(){
translate([130,-10]) square([10,20]);
translate([140,0]) scale([1,2]) circle(r=5);
}
}

translate([0,0,24]) rotate([0,90,0]) footpeg_mount();

module footpeg_mount(){
difference(){
union(){
translate([0,-28,0]) cut_cube(24,54,28,4);
translate([9,4,26]) cut_cube(15,32,32,3);
translate([4,15,56]) cut_cube(20,50,20,4);
translate([0,48,74]) cut_cube(24,35,10,4);
translate([0,-14,14]) rotate([90,0,90]) cylinder(h=14,r=10);
}
translate([20,-14,14]) rotate([90,0,90]) nut_cap(13.6,10);
translate([14,72,73])rotate([0,0,90]) cylinder(h=14,r=4.2);
translate([-1,-14,14]) rotate([90,0,90]) cylinder(h=26,r=4.2);
}
}//end part




module cut_cube(x,y,z,d){
m = 2.5;
difference(){
cube([x,y,z]);
translate([0,m,m]) cube([d,y-2*m,z-2*m]);
translate([0,2*m,2*m]) cube([2*d,y-4*m,z-4*m]);
translate([0,3*m,3*m]) cube([3*d,y-6*m,z-6*m]);
}
}

module nut_cap(nut_size,depth){
union(){
for(a = [0,60,120]){
rotate([0,0,a]) cube([nut_size,.5774*nut_size,depth],center = true);
}//end for
}//end union
}

