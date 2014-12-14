
module motor_gear(){
difference(){
gear();
motor_shaft();
cylinder(h=10,r=1);
}//end diff
}//end part


module gear() {
union(){
cylinder(r=5.1,h=10);
for(a=[0:24:360]){
rotate([0,0,a]) translate([5,-.5,0]) cube([1.1,1,10]);
}//end for
}//end union

}

module motor_shaft(){
difference(){
cylinder(r=3.5,h=7);
translate([5.8,0,3.5]) cube([7,7,7],center=true);
translate([-5.8,0,3.5]) cube([7,7,7],center=true);
}//end diff
}//end part