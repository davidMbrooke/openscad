/*
 *
 * 3D-printable hanger rail wall bracket to suit SpacePro Relax wardrobe interior fittings
 * As per https://spacepro.co.uk/portfolio/relax-hanger-bar/
 *
 */
difference () {
   difference () {
       cylinder( r=19, h=15 );
       translate( [-34.5,0.0] ) cube( size=40, center=true );
       translate( [34.5,0.0] ) cube( size=40, center=true );
   }
   difference () {
       translate( [0,0,5] ) cylinder( r=15.5, h=20 );
       translate( [-30.5,0,0] ) cube( size=40, center=true );
       translate( [30.5,0,0] ) cube( size=40, center=true );
   }
}
difference () {
    cylinder( r=25, h=3 );
    translate( [-19,0,-5] ) cylinder( r=2, h=10 );
    translate( [19,0,-5] ) cylinder( r=2, h=10 );
}
