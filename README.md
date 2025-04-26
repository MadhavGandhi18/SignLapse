# SignLapse

SignConnect is an AI-based tool that enables two-way communication between signers and non-signers. It converts sign language to speech/text and vice versa using deep learning and real-time animation. Designed for inclusion, it works across classrooms, meetings, and online platforms like Google Meet and YouTube.

## Project Structure

The project consists of several main components:

1. **Website** - The main web application
   - Next.js frontend with UI components
   - API routes for handling requests

2. **Sign-to-Audio** - Converts sign language to speech
   - SignCoach model for sign detection
   - Speech synthesis components

3. **Audio-to-Sign** - Converts speech to sign language animations
   - Speech recognition
   - Animation generation

4. **YouTube Extension** - Browser extension for using SignLapse with YouTube

## Setup Instructions

### Prerequisites
- Node.js (v14+)
- Python (v3.8+)
- Git

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/MadhavGandhi18/SignLapse.git
   cd SignLapse
   ```

2. **Website Setup**
   ```bash
   cd website
   npm install
   npm run dev
   ```

3. **Sign-to-Audio Setup**
   ```bash
   cd sign_to_audio
   python -m venv venv
   # On Windows
   venv\Scripts\activate
   # On macOS/Linux
   source venv/bin/activate
   pip install -r requirements.txt
   ```

4. **Audio-to-Sign Setup**
   ```bash
   cd audio_to_sign
   python -m venv venv
   # On Windows
   venv\Scripts\activate
   # On macOS/Linux
   source venv/bin/activate
   pip install -r requirements.txt
   python app.py
   ```

## GitHub Compatibility Note

This repository uses a `.gitignore` file to exclude large files and dependencies. When cloning the repository, you need to:

1. Install dependencies for each component 
2. Download model files separately (follow component-specific instructions)

## License

[Include license information here]
