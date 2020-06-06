/*
 *
 * 3D-printable extension piece for 30mm diameter door stop
 *
 */
difference () {
    cylinder( r=15, h=20 );
    translate( [0,0,-5] ) cylinder( r=2.6, h=30 );
}
