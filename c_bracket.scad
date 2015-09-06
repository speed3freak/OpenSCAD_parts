module haf(){
difference(){
union(){
cube([60,100,10]);
translate([0,0,5]) cube([10,105,12]);
translate([0,100,0]) rotate([40,0,0]) difference(){
cube([60,25,10]);
translate([51,16,0]) cylinder(h=10,r=4.3);//bolt hole
}
}
translate([100,23,0]) cylinder(r=85,h=30);//cutaway
translate([-2,0,12]) rotate([0,90,0]) cylinder(h=21, r=4.3);//bolt hole
}//end diff



translate([0,0,12]) difference(){
rotate([0,90,0]) cylinder(h=18.5, r=12);//mounting cylinder
rotate([0,90,0]) cylinder(h=19, r=4.3);//bolt hole
}//end diff
}//end module

union(){
haf();
mirror([1,0,0]) haf();
}