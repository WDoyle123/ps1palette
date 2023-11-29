# PS1Palette

PS1Palette is a Bash script designed to simplify the process of customising the command prompt (PS1) in Bash. It allows users to easily change the colour of their terminal prompt without needing to understand the complex syntax of PS1 colour codes.

## Features

- **Easy to Use**: Just select the colour and the script does the rest.
- **Customisable**: Offers full and segmented colouring options for your PS1.
- **Colour Options**: Includes standard, bold, bright, and bold-bright colour variations.
- **Safe**: Echoes changes to the `.bashrc` file, allowing easy reversion to original settings.

## Usage

1. Run the script: `./ps1palette.sh`
2. Choose between `full` or `segmented` colouring options.
3. For full colouring, select a colour for the entire PS1.
4. For segmented colouring, select colours for each segment (Username, Hostname, Directory, Prompt Symbol).
5. Confirm to apply changes to your current session and save them to `.bashrc`.

### Colour Prefixes

- `b` for bold (e.g., `bred` for bold red)
- `br` for bright (e.g., `brred` for bright red)
- `bbr` for bold and bright (e.g., `bbrred` for bold and bright red)

### Available Colours

- black
- red
- green
- yellow
- blue
- magenta
- cyan
- white

## Notes and Disclaimer

- **Caution**: This script alters `.bashrc`. It is recommended to backup your `.bashrc` before running.
- **Colour Variation**: Colours may vary based on terminal settings. I'm not liable for unintended changes.
- **Source**: After updating `.bashrc`, run `source ~/.bashrc` to apply changes immediately.

## Contributing

Feel free to fork, modify, and send pull requests or open issues for any improvements or bug fixes.

## License


