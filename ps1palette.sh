#!/bin/bash 

# Declare an associative array for color codes
declare -A colourCodes

# dictionary type obejct for colours and their ascii escape colour codes
colourCodes=(
    [black]="0;30" [red]="0;31" [green]="0;32" [yellow]="0;33"
    [blue]="0;34" [magenta]="0;35" [cyan]="0;36" [white]="0;37"
    [bblack]="1;30" [bred]="1;31" [bgreen]="1;32" [byellow]="1;33"
    [bblue]="1;34" [bmagenta]="1;35" [bcyan]="1;36" [bwhite]="1;37"
    [brblack]="0;90" [brred]="0;91" [brgreen]="0;92" [bryellow]="0;93"
    [brblue]="0;94" [brmagenta]="0;95" [brcyan]="0;96" [brwhite]="0;97"
    [bbrblack]="1;90" [bbrred]="1;91" [bbrgreen]="1;92" [bbryellow]="1;93"
    [bbrblue]="1;94" [bbrmagenta]="1;95" [bbrcyan]="1;96" [bbrwhite]="1;97"
)

available_colours=('black, red, green, yellow, blue, magenta, cyan, white')

echo 'Welcome to PS1Palette'
echo 'Notes and Disclaimer:'
echo 'Use caution: Script alters .bashrc. Colours vary by terminal. I'm not liable for changes.
echo 'It is a good idea to remove your current PS1'
echo 'This is located at ~/.bashrc'

# user picks between full and segmented PS1 colouring options
while true; do
    echo
    echo 'Please select full or segmented colour options'
    read paint_option

    if [[ $paint_option == 'full' ]]; then
	echo "Please select a colour for the PS1 (colour prefixes: b for bold, br for bright, bbr for bright and bold)"
	echo 'eg. bred, brred, bbrred'
	echo
	echo $available_colours
	read colour

        if [[ -v colourCodes[$colour] ]]; then
		newPS1="\[\e[${colourCodes[$colour]}m\][\u@\h \w]\$ \[\e[0m\]"
            break
        else
            echo "Invalid colour. Please try again or type 'list' to see all colours."
	fi
    elif [[ $paint_option == 'segmented' ]]; then
	    echo
            echo '[Username@Hostname:~Directory]$'
	    echo 'Available colours (colour prefixes: b for bold, br for bright, bbr for bright and bold)'
	    echo 'eg. bred, brred, bbrred'
	    echo
	    echo $available_colours
	    echo
	    echo 'Brackets colour:'
	    read brackets_colour
            echo 'Username colour:'
            read username_colour
            echo '@ symbol colour:'
            read at_symbol_colour
            echo 'Hostname colour:'
            read hostname_colour
            echo 'Working Directory colour:'
            read working_directory_colour
            echo 'Prompt symbol colour:'
            read prompt_symbol_colour
	
	brackets_colour_code="${colourCodes[$brackets_colour]}"
	username_colour_code="${colourCodes[$username_colour]}"
	at_symbol_colour_code="${colourCodes[$at_symbol_colour]}"
	hostname_colour_code="${colourCodes[$hostname_colour]}"
	working_directory_colour_code="${colourCodes[$working_directory_colour]}"
	prompt_symbol_colour_code="${colourCodes[$prompt_symbol_colour]}"

	# Constructing the PS1 string
	newPS1="\[\e[${brackets_colour_code}m\][\[\e[${username_colour_code}m\]\u\[\e[${at_symbol_colour_code}m\]@\[\e[${hostname_colour_code}m\]\h \[\e[${working_directory_colour_code}m\]\w\[\e[${brackets_colour_code}m\]]\[\e[0m\]\$ "
        break
    else
        echo "Invalid option. Please type 'full' or 'segmented'."
    fi
done

# Apply the new PS1
echo 'PSI='$newPS1
echo "Do you want to apply this PS1 to your current session and save it to ~/.bashrc? (yes/no)"
read apply_choice
if [[ $apply_choice == "yes" ]]; then
    export PS1="$newPS1"
    echo "export PS1='$newPS1'" >> ~/.bashrc
    echo 'PS1 Updated!'
    echo 'Run:  'source ~/.bashrc' to apply changes'
else
    echo 'PS1 update canceled.'
fi
