# Breathe

Breathe is a command-line tool that guides you through breathing exercises with customizable patterns and iterations. It helps you relax, reduce stress, and improve focus by providing a simple and convenient way to practice controlled breathing techniques.

## Features

- Customizable breathing patterns (4-7-8 and 4-2-4)
- Adjustable number of iterations
- Visual countdown for each breathing stage
- Simple and intuitive command-line interface

## Installation

### Prerequisites

- macOS
- Homebrew package manager

### Install with Homebrew

To install Breathe using Homebrew, run the following commands:

```
Copy code

brew tap Yamilquery/breathe
brew install yamilquery/breathe/brew_formula
```

Replace `Yamilquery` with your GitHub username.

## Usage

To start a breathing exercise, simply run the `breathe` command in your terminal:

```
Copy code

breathe [--iterations <number>] [--pattern <pattern>] [--help]
```

### Options

- `--iterations <number>`: Specify the number of iterations for the breathing exercise. If not provided, the exercise will continue indefinitely.
- `--pattern <pattern>`: Choose the breathing pattern. Available options are `4-7-8` (default) and `4-2-4`.
- `--help`: Display the help message with usage instructions.

### Examples

- Start a breathing exercise with default settings (unlimited iterations, 4-7-8 pattern):

  ```
  Copy code
  
  breathe
  ```

- Start a breathing exercise with five iterations:

  ```
  Copy code
  
  breathe --iterations 5
  ```

- Start a breathing exercise with the 4-2-4 pattern:

  ```
  Copy code
  
  breathe --pattern 4-2-4
  ```

- Start a breathing exercise with three iterations and the 4-2-4 pattern:

  ```
  Copy code
  
  breathe --iterations 3 --pattern 4-2-4
  ```

## Contributing

Contributions are welcome! If you have any issues or suggestions for improvements, please open an issue or submit a pull request on the [GitHub repository](https://github.com/Yamilquery/breathe).

## License

This project is licensed under the MIT License.
