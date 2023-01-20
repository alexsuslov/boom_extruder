/**
S = π × r12
18*18*3.14159 = 1017,87516 // площадь канала

1017,87516/50 = 20,3575032 // сопло для стены 50мм
1017,87516/40 = 25,446879 // сопло для стены 40мм
*/
include <homut.scad>
include <tube.scad>
include <connector.scad>
include <noise.scad>

module extruder(D=40.2, size=[50, 20]){

    translate([0,0,20]) homut(D=D, T=3);
    tube(D, T=3);
    rotate([0,180,0]){
        connector(D=D, T=3, size=size);
    }
    translate([0,0,-65]) noise(size=size);
}
extruder();
