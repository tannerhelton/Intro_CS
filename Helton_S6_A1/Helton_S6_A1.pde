//Tanner Helton
float grade = random(0, 100);
println("Grade = " + grade);
if (grade > 90) {
  println("Assign letter grade A");
} else if (grade > 80) {
  println("Assign letter grade B");
} else if (grade > 70) {
  println("Assign letter grade C");
} else if (grade > 60) {
  println("Assign letter grade D");
} else {
  println("Assign letter grade F");
}