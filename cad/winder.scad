thickness = 3;
hold_length = 100;
hold_width = 70;
string_hole_r = 1;
clip_hole_r = 4;

include </home/mattvenn/cad/MCAD/shapes.scad>;

projection()
complete();

module complete()
{
    difference()
    {
        winder();
        translate([hold_length/2,0,0])
            cylinder(r=string_hole_r,h=thickness*2,center=true);
        translate([hold_length/2+hold_length/8+clip_hole_r,0,0,])
            clip_holes();
        translate([-hold_length/2-hold_length/8-clip_hole_r,0,0,])
            clip_holes();
    }
}

module clip_holes()
{
    for(y = [-2:2])
    {
    translate([0,y * clip_hole_r * 4,0])
        cylinder(r=clip_hole_r,h=thickness*2,center=true);
    }
}
module winder()
{
    cube([hold_length,hold_width,thickness],center=true);
    translate([hold_length/2+hold_length/8,0,0])
        roundedBox(hold_length/4,hold_width*1.5,thickness,hold_length/8);
    translate([-hold_length/2-hold_length/8,0,0])
        roundedBox(hold_length/4,hold_width*1.5,thickness,hold_length/8);
}
