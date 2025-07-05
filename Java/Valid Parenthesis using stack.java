class Solution {
    public boolean isValid(String s) {
        // Use a stack to store opening brackets
        Stack<Character> stack = new Stack<>();
        
        // Iterate over each character in the string
        for (int i = 0; i < s.length(); i++) {
            char current = s.charAt(i);
            
            // If the character is an opening bracket, push it onto the stack
            if (current == '(' || current == '{' || current == '[') {
                stack.push(current);
            } 
            // If it's a closing bracket, check if it matches the top of the stack
            else {
                if (stack.isEmpty()) {
                    return false; // If the stack is empty, there's no matching opening bracket
                }
                char top = stack.pop();
                if ((current == ')' && top != '(') || 
                    (current == '}' && top != '{') || 
                    (current == ']' && top != '[')) {
                    return false; // Mismatch found
                }
            }
        }
        
        // If the stack is empty, all brackets are matched; otherwise, return false
        return stack.isEmpty();
    }
}
