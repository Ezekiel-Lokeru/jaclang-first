# 🌾 Farmer Q&A Bot  
**An AI-powered agricultural assistant built with JacLang and Gemini LLM**

---

## 📖 Overview  
The **Farmer Q&A Bot** is an interactive AI assistant designed to help farmers get **instant, practical answers** to agricultural questions — from planting advice to pest management and weather timing.  

Built using **[JacLang](https://jac-lang.org/)** and powered by **Google’s Gemini LLM** (via `byLLM` and `LiteLLM`), the bot can hold a short conversation, remember past questions within a session, and provide tailored responses for real farming use cases.  

---

## 🚀 Features  

- 💬 **Interactive Q&A:** Farmers can ask any question directly in the terminal.  
- 🧠 **Conversation Memory:** Remembers the last few exchanges for context-aware replies.  
- ⚙️ **Optimized History:** Automatically trims conversation history to save resources.  
- 🤖 **Gemini-Powered Responses:** Uses Gemini’s natural language intelligence for accurate, human-like answers.  
- 🌍 **Built with JacLang:** Uses Jac’s declarative and agent-based model to structure interactions.  

---

## 🧩 Tech Stack  

| Component | Technology |
|------------|-------------|
| **Language / Runtime** | [JacLang](https://jac-lang.org/) |
| **AI Integration** | [byLLM](https://github.com/byllm/byllm) |
| **LLM Provider** | [Google Gemini 2.5 Flash](https://cloud.google.com/vertex-ai/docs/generative-ai) |
| **Model Bridge** | [LiteLLM](https://docs.litellm.ai/docs/) |
| **Environment** | Local or Cloud CLI execution |

---

## 📦 Project Structure  

farmer_qna_bot/
├── farmer_bot.jac # Main Jac source file (AI logic)
├── jacconfig.toml # Configuration file for byLLM + LLM provider (optional)
├── README.md # Documentation
└── jac-env/ # Virtual environment (optional)


---

## ⚙️ Setup Instructions  

### 1. 🧰 Prerequisites  
Make sure you have the following installed:  

- [Python 3.10+](https://www.python.org/downloads/)  
- [JacLang](https://jac-lang.org/docs/getting-started)  
- [byLLM](https://pypi.org/project/byllm/)  
- A **Google Gemini API Key** (from [Google AI Studio](https://aistudio.google.com/app/apikey))  

---

### 2. 📦 Installation  

```bash
# Clone the project
git clone https://github.com/<your-username>/farmer-qna-bot.git
cd farmer-qna-bot

# Create and activate a virtual environment (optional)
python -m venv jac-env
jac-env\Scripts\activate  # Windows
# or
source jac-env/bin/activate  # Mac/Linux

# Install Jac and byLLM
pip install jaclang byllm litellm

3. 🔑 Set up your Gemini API Key
# On Windows PowerShell
setx GOOGLE_API_KEY "your_api_key_here"

# On macOS/Linux
export GOOGLE_API_KEY="your_api_key_here"

4. 🧠 Run the Bot
jac run farmer_bot.jac

5.Then type your farming questions directly in the terminal, e.g.:
👨‍🌾 Ask your question: When should I plant maize in Kitale?
🤖 Advisor: The best time to plant maize in Kitale is at the onset of long rains, usually between March and May...

🌐 Future Improvements

🌦️ Integrate real-time weather data via a weather API.

🐛 Add crop disease image diagnosis using vision models.

📱 Build a React frontend and connect via REST API or WebSocket.

📊 Enable offline data caching for areas with limited connectivity.

🤝 Contributing

Pull requests are welcome! If you’d like to add new features or fix bugs:

Fork the repo

Create a new branch (git checkout -b feature-name)

Commit your changes

Open a Pull Request

🧾 License

This project is open-source and available under the MIT License.

💬 Acknowledgments

JacLang Team
 for building an agent-based programming language.

BerriAI LiteLLM
 for simplifying multi-LLM integration.

Google Gemini
 for powering intelligent agricultural insights.