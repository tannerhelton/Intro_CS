int[] nums = { 5, 4, 2, 7, 6, 8, 5, 2, 8, 14 };
int total = 0;
for (int i = 0; i < nums.length; i++) {
  nums[i] = nums[i]*nums[i];
}
for (int i = 0; i < nums.length; i++) {
  nums[i] += int(random(10));
}
for (int i = 0; i < nums.length-1; i++) {
  nums[i] += nums[i+1];
}
for (int i = 0; i < nums.length; i++) {
  total += nums[i];
}
println(nums);
println(total);