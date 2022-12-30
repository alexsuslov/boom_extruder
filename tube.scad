/**
 *  D диаметр
 * 	H высота
 *  T толщина стенки
 */

module tube(D=40 , H=20, T=2){
	r=D/2;
    difference(){
        cylinder(H, r=r+T, true, $fn=100);
        cylinder(H, r=r, true, $fn=100);
    }
}
// tube();
