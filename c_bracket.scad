module haf(){
difference(){
cube([60,120,8]);
translate([51,112,0]) cylinder(h=10,r=3.5);//bolt hole
translate([100,30,0]) cylinder(r=88,h=10);//cutaway
}//end diff

translate([0,0,12]) difference(){
rotate([0,90,0]) cylinder(h=19, r=12);//mounting cylinder
rotate([0,90,0]) cylinder(h=19, r=3.3);//bolt hole
}//end diff
}//end module

union(){
haf();
mirror([1,0,0]) haf();
}