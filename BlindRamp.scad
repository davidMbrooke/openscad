/*
 *
 * 3D-printable parametric model for a ramp to step roller blinds over skirting and windowsill
 *
 */
module prism(l, w, h) {
       polyhedron(
               points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
               faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
               );
}
height = 150;
width = 20;
skirtproj = 18;
sillproj = 10;
sillthick = 19;
belowsill = 25;
rotate( [0,90,0] )
difference () {
    union() {
        translate( [0,0,0] ) prism( width,height,skirtproj+sillproj );
        translate( [0,height,0] ) cube( [width,sillthick,skirtproj+sillproj] );
        translate( [0,height+sillthick,0] ) cube( [width,belowsill,skirtproj] );
        rotate( 180 ) translate( [-width,-height-sillthick-belowsill,skirtproj] ) prism( width,belowsill,sillproj );
    }
    union() {
        translate( [-5,height,-5] ) cube( [width+10,sillthick,skirtproj+5] );
        translate( [-5,height,-5] ) cube( [width+10,sillthick+belowsill+5,skirtproj+5] );
    }
}
