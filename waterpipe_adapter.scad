out_top = 20;
out_bot = 15;
in_top = 16;
in_bot = 12;
height = 25;

difference(){
//outer cylinder
cylinder(r2=out_top,r1=out_bot,h=height);
//inner cylinder
cylinder(r2=in_top,r1=in_bot,h=height);
}