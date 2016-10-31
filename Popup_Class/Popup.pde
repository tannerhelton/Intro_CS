import javax.swing.*; 
class Popup {
  float floatOut;
  String strOut;
  int intOut;
  Popup(String type, String request, String preset) {
    try { 
      UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
    }
    catch (Exception e) { 
      e.printStackTrace();
    }
    if (type == "Integer" || type == "integer") {
      String op1s = JOptionPane.showInputDialog(frame, request, preset);
      if (op1s != null) intOut = Integer.parseInt(op1s);
    } else if (type == "String" || type == "string") {
      String op1s = JOptionPane.showInputDialog(frame, request, preset);
      if (op1s != null) strOut = op1s;
    } else if (type == "Float" || type == "float") {
      String op1s = JOptionPane.showInputDialog(frame, request, preset);
      if (op1s != null) floatOut = Float.parseFloat(op1s);
    }
  }
}