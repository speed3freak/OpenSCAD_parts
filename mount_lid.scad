lid();


module lid(){
difference(){
hull(){
for(x=[-15,15]){
for(y=[-25,25]){
 translate([x,y,0]) cylinder(r=3,h=3);
}//end hull
}//end x loop
}//end y loop

for(x=[-15,15]){
for(y=[-25,25]){
//drill holes
 translate([x,y,0]) cylinder(r=1,h=3);
}//end x loop
}//end y loop
//cut out motor
translate([0,-6.5,-8]) rotate([0,0,90]) motor_cutout();
}//end diff
}//end part

module motor_cutout(){
union(){
cube([43,23,16],center=true);
translate([-2,0,1]) cube([7,7,18],center=true);
translate([-10.25,0,5]) cylinder(r=5,h=25,center=true);
}//end union

}