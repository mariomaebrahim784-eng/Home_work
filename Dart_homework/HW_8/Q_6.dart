bool isValid(String s) {
  List<String> stack = [];

  Map<String, String> brackets = {
    ')': '(',
    '}': '{',
    ']': '[',
  };

  for (int i = 0; i < s.length; i++) {
    String char = s[i];

  
    if (char == '(' || char == '{' || char == '[') {
      stack.add(char);
    } 
   
    else {
      if (stack.isEmpty) {
        return false;
      }

      String last = stack.removeLast();

      if (last != brackets[char]) {
        return false;
      }
    }
  }

  return stack.isEmpty;
}

void main() {
  print(isValid("()"));      
  print(isValid("()[]{}"));  
  print(isValid("(]"));      
  print(isValid("([)]"));   
  print(isValid("{[]}"));    
}
