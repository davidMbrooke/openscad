/*
 *
 * 3D-printable end cap for 100mm square-section electrical trunking
 *
 */
module prism( l, w, h ) {
       polyhedron(
               points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
               faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
               );
}
union() {
    cube( [100,100,2.5] );
    translate( [2.5,21,2.5] ) cube( [2.5,76.5,7] );
    translate( [2.5,21,9.5] ) prism( 2.5,76.5,10 );
    translate( [95,21,2.5] ) cube( [2.5,76.5,7] );
    translate( [95,21,9.5] ) prism( 2.5,76.5,10 );
    translate( [5,95,2.5] ) cube( [14,2.5,17] );
    translate( [2.5,97.5,19.5] ) rotate( 270 ) prism( 2.5,16.5,7 );
    translate( [81,95,2.5] ) cube( [14,2.5,17] );
    translate( [97.5,95,19.5] ) rotate( 90 ) prism( 2.5,16.5,7 );
}
