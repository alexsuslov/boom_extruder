/**
S = π × r12
18*18*3.14159 = 1017,87516 // площадь канала

1017,87516/50 = 20,3575032 // сопло для стены 50мм
1017,87516/40 = 25,446879 // сопло для стены 40мм
*/
include <tube.scad>
include <connector.scad>
include <noise.scad>

module cuter(D=40.2, T=3, T1=1.6){
    cube([T1, D+6, 15], center=true);
    rotate([0, 0, 60])
        cube([T1, D+6, 15], center=true);
    rotate([0, 0, 120])
        cube([T1, D+6, 15], center=true);
}

module extruder(D=40.2, T=3, size=[50, 20]){
    T1=1.6;    
    difference(){
        tube(D, H=30, T=3);
        translate([0, 0, 23])
            cuter(D, T, T1);
    }
    rotate([0,180,0]){
        connector(D=D, T=3, size=size);
    }
    translate([0,0,-65]) noise(size=size);
}
extruder();
