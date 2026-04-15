void main() {
  // --- SYSTEM VARIABLES ---
  // Change this string to test different AI responses
  // Try: 'check clearance', 'next class', 'enrollment status', or 'hello'
  String userIntent = 'check clearance'; 
  
  // BONUS: Offline-First trigger (Set to false to test emergency message)
  bool isInternetConnected = true; 

  print('=========================================');
  print('    ASSCAT SUPREME AI COPILOT v1.0       ');
  print('=========================================\n');

  // --- LOGIC ENGINE ---
  if (!isInternetConnected) {
    // BONUS: Offline-First Emergency Message (+5 pts)
    print('⚠️ [OFFLINE MODE]: Connection lost. You are viewing cached schedule data from yesterday.');
  } else {
    print('Processing intent: "$userIntent"...\n');
    
    // Core Decision-Making Logic
    switch (userIntent.toLowerCase()) {
      case 'check clearance':
        print('🤖 AI: You have 1 pending requirement. Please visit the Library to settle your unreturned book.');
        break;
      case 'next class':
        print('🤖 AI: Your next class is ITCC 105 in Laboratory Room 2 at 1:00 PM.');
        break;
      case 'enrollment status':
        print('🤖 AI: You are officially enrolled for the current semester. Good luck!');
        break;
      default:
        print('🤖 AI: I am still learning! I did not understand "$userIntent". Would you like me to connect you to a human student assistant?');
    }
  }
}
