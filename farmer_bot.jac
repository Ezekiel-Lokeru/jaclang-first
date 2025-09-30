"""Farmer Q&A Bot"""

import from byllm.llm { Model }

# Use Gemini model (API key must be set in terminal with $env:GOOGLE_API_KEY="...")
glob llm = Model(model_name="gemini/gemini-2.5-flash", verbose=True);

"""Answer farmers' questions with practical agricultural advice"""
def farmer_advisor(question: str) -> str by llm();

walker FarmerChat {
    has question: str;

    can start with `root entry {
        print("👨‍🌾 Farmer asked:", self.question);
        reply = farmer_advisor(self.question);
        print("🤖 Advisor:", reply);
    }
}

with entry:__main__ {
    # Loop to keep chatting until farmer types 'exit'
    while True {
        input_q = input("👨‍🌾 Ask your farming question (or type 'exit' to quit): ");
        if input_q == "exit" {
            print("👋 Goodbye, happy farming!");
            break;
        }
        root spawn FarmerChat(input_q);
    }
}
