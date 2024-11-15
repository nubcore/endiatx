$fn=64;

pillD = 13.37;
pillL = 29.80;

boxW = pillL + 4;
boxD = pillD + 4;
boxH = pillD + 4;

difference () {
    box();
    translate([0, 0, pillD/2+2]) rotate([0, 90, 0])
        pill();
    translate([0, boxW/2+4.6, pillD/2+2]) rotate([0, 90, 0])
        pill();
}
hinge();

module pill() {
    cylinder(pillL, d=pillD, center=true);
}

module box() {
    translate([0, 0, boxH/4])
        cube([boxW, boxD, boxH/2], center=true);
    
    translate([0, boxH+4.2, boxH/4])
        cube([boxW, boxD, boxH/2], center=true);
}

module hinge() {
    difference() {
        union() {
            translate([0, boxD/2+2.1, boxH/2]) rotate([0, 90, 0])
                cylinder(12, d=3.6, center=true);
            translate([0, boxD/2+0.1, boxH/2-1.8]) rotate([45, 0, 0])
                cube([12, 3.6, 2.8], center=true);
        }
        translate([6, boxD/2+2.1, boxH/2])
            sphere(1.8);
        translate([-6, boxD/2+2.1, boxH/2])
            sphere(1.8);

    }
    

        translate([9.1, boxD/2+2.1, boxH/2]) rotate([0, 90, 0])
            cylinder(6, d=3.6, center=true);
        translate([6.1, boxD/2+2.1, boxH/2])
            sphere(1.6);
        translate([9.1, boxD/2+3.6+0.4, boxH/2-1.8]) rotate([-45, 0, 0])
            cube([6, 3.6, 2.8], center=true);

        translate([-9.1, boxD/2+2.1, boxH/2]) rotate([0, 90, 0])
            cylinder(6, d=3.6, center=true);
        translate([-6.1, boxD/2+2.1, boxH/2])
            sphere(1.6);
        translate([-9.1, boxD/2+3.6+0.4, boxH/2-1.8]) rotate([-45, 0, 0])
            cube([6, 3.6, 2.8], center=true);

}