g_thick = 10;
plate_mount();

module plate_mount(){
union(){
mirror([1,0,0]) plate_half();
plate_half();
}//end union
}//end part

module plate_half(){
//subtract the bolt holes
difference(){
body();
translate([73,17,10]) rotate([180,0,0]) m6_bolt();
translate([73,87,10]) rotate([180,0,0]) m6_bolt();
translate([19,33,0]) m6_bolt();
translate([19,71,0]) m6_bolt();
//cut out some from the middle for weight
translate([0,52,0]) cylinder(r1=20,r2=15,h=g_thick);
}//end diff

}//end part


module body(){
intersection(){
cube([90,104,g_thick]);

union(){
difference(){
translate([45,77,0]) rotate([0,0,20]) scale([3,1,1]) cylinder(r=15,h=g_thick);
translate([48,78,0]) rotate([0,0,20]) scale([2,1.1,1]) cylinder(r1=10,r2=7,h=g_thick);
}
difference(){
translate([45,27,0]) rotate([0,0,-20]) scale([3,1,1]) cylinder(r=15,h=g_thick);
translate([48,26,0]) rotate([0,0,-20]) scale([2,1.1,1]) cylinder(r1=10,r2=7,h=g_thick);
}
translate([0,52,0]) cylinder(r=25,h=g_thick);

}//end union
}//end intersection
}//end body


module m6_bolt(){
m6_nut_width = 10.6;
union(){
translate([0,0,-1]) cylinder(r=3.3,h=11);
translate([0,0,7.5]) nut_cap(m6_nut_width,5.5);
}
}

module nut_cap(nut_size,depth){
union(){
for(a = [0,60,120]){
rotate([0,0,a]) cube([nut_size,.5774*nut_size,depth],center = true);
}//end for
}//end union
}