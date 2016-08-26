//Tanner Helton
//Output: 75 > 50!
/*int x = 75;
 if (x > 50) {
 println(x + " > 50!");
 } else if (x > 25) {
 println(x + " > 25!");
 } else {
 println(x + " <= 25!");
 }*/

//Output: 75 > 25!
/*int x = 75;
 if (x > 25) {
 println(x + " > 25!");
 } else if (x > 50) {
 println(x + " > 50!");
 } else {
 println(x + " <= 25!");
 }*/

//Output: x is now: 5
//Output: x is now: 5
/*int x = 5;
 println("x is now: " + x);
 if (x == 5) {
 x = 6;
 }
 if (x == 6) {
 x = 5;
 }
 println("x is now: " + x);*/

//Output: x is now: 5
//Output: x is now: 6
int x = 5;
println("x is now: " + x);
if (x == 5) {
  x = 6;
} else if (x == 6) {
  x = 5;
}
println("x is now: " + x);