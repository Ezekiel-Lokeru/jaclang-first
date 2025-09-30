"""Farmer Q&A Bot with Optimized Memory"""

import from byllm.llm { Model }

# Use Gemini model (API key must be set in terminal with $env:GOOGLE_API_KEY="...")
glob llm = Model(model_name="gemini/gemini-2.5-flash", verbose=True);

# Keep conversation history (Q&A pairs)
glob history: list[str] = [];
glob max_history: int = 10;   # 5 questions + 5 answers

"""Answer farmers' questions with practical agricultural advice"""
def farmer_advisor(prompt: str) -> str by llm();

walker FarmerChat {
    has question: str;

    can start with `root entry {
        # Build context using only the most recent exchanges
        recent_history = history[-max_history:];
        context = "\n".join(recent_history) + f"\nFarmer: {self.question}\nAdvisor:";

        print("Farmer asked:", self.question);
        reply = farmer_advisor(context);
        print("Advisor:", reply);

        # Save this exchange in history
        history.append(f"Farmer: {self.question}");
        history.append(f"Advisor: {reply}");

        # Trim history safely
        if len(history) > max_history {
            history[:] = history[-max_history:];
        }
    }
}

with entry:__main__ {
    # Loop to keep chatting until farmer types 'exit'
    while True {
        input_q = input("Ask your farming question (or type 'exit' to quit): ");
        if input_q == "exit" {
            print("Goodbye, happy farming!");
            break;
        }
        root spawn FarmerChat(input_q);
    }
}
