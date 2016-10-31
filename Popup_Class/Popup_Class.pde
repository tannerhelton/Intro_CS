import javax.swing.*; 
Popup test;
int n, circle, up, position, coord;
void setup() {
  // Args Popup("Type (integer,float,string)", "Prompt", "Preset")
  test = new Popup("Integer", "Enter a number", "83");
  // The output variable is (object name).(int/float/str)Out
  print(test.intOut);
  exit();
}