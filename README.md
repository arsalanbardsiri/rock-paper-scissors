# Rock-Paper-Scissors CLI Game

A simple command-line interface (CLI) game written in Ruby where two players can play Rock-Paper-Scissors, or a single player can play against the computer. The game tracks scores and provides ASCII art for each choice.

---

## Features

* Two modes:

  * **2-Player mode**
  * **Play against the computer**
* Tracks scores for each player.
* Shows ASCII art representation of Rock, Paper, and Scissors.
* User-friendly terminal input prompts.
* Tests implemented using **MiniTest**.

---

## Getting Started

### Prerequisites

* Ruby >= 3.0 installed
* Git (optional for cloning repo)

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/arsalanbardsiri/rock-paper-scissors.git
   ```
2. Navigate to the project folder:

   ```bash
   cd rock-paper-scissors
   ```

---

## How to Play

1. Run the game:

   ```bash
   ruby app.rb
   ```
2. Choose the game mode:

   * Enter `1` for **2-Player**
   * Enter `2` to play against the **computer**
3. Follow the prompts to enter your choice: `Rock`, `Paper`, or `Scissors`.
4. After each round, scores are displayed.
5. To play again, enter `P`; to quit, enter `Q`.

---

## Running Tests

Tests are located in the `test/` folder and use **MiniTest**:

```bash
ruby -Itest test/test_game.rb
```

Tests include:

* Validating computer choices
* Winner logic for both 2-player and vs-computer modes
* Score tracking

---

## File Structure

```
rock-paper-scissors/
│
├── app.rb           # Main CLI game loop
├── game_play.rb     # Game logic, winner checking
├── select.rb        # Game constants and Game class
├── test/            # MiniTest test files
│   └── test_game.rb
├── Gemfile
├── Gemfile.lock
└── README.md
```

---

## Future Improvements

* Add more game modes or best-of series.
* Improve input validation for case-insensitive input.
* Add a functional\_spec.md to outline user stories and functional requirements.

---

## Author

**Arsalan Bardsiri**
