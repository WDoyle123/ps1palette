# PS1Palette

PS1Palette is a Bash script designed to simplify the process of customising the command prompt (PS1) in Bash. It allows users to easily change the colour of their terminal prompt without needing to understand the complex syntax of PS1 colour codes.

## Example
<p align="center">
	<img src="examples/example1.png" alt="example1.png">
	<img src="examples/example2.png" alt="example2.png">
	<img src="examples/example3.png" alt="example3.png">
</p>


## Features

- **Easy to Use**: Just select the colour and the script does the rest.
- **Customisable**: Offers full and segmented colouring options for your PS1.
- **Colour Options**: Includes standard, bold, bright, and bold-bright colour variations.
- **Safe**: Echoes changes to the `.bashrc` file, allowing easy reversion to original settings.

## Usage
1. Clone the repository or download the `ps1palette.sh` script.
```
git clone https://github.com/WDoyle123/ps1palette.git
```
2. Make the script executable:
```
chmod +x ps1palette.sh
```
3. Run the script: `./ps1palette.sh`
4. Choose between `full` or `segmented` colouring options.
5. For full colouring, select a colour for the entire PS1.
6. For segmented colouring, select colours for each segment (Username, Hostname, Directory, Prompt Symbol).
7. Confirm to apply changes to your current session and save them to `.bashrc`.

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


