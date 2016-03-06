#!/usr/bin/perl
use strict;
use warnings;

# Conv2 - New and improved conversion tool.
# Made by http://github.com/JetLaggedEgg.
# Released under the MIT license.

# Clear terminal on startup.
system("clear");

# Print title once a start.
print("Started conv2 v1.0.1.\n");

# Initiation of main menu block.
&init;

# Init block - Unit selection.
sub init {
	# Variables.
	my $option = "";	# The user's choice.

	# Menu Text.
	print("\nWhat unit are you converting?\n\n");
	print("1 - Distance.\n");
	print("2 - Temperature.\n");
	print("3 - Data size.\n");
	print("q - Quit\n\n");

	# Input.
    print ("Option: "); # Ask for option.
    $option = <>;       # Take input.
    chomp ($option);    # Clean input.
    print ("\n");       # Made some space after input.

    # Clear screen.
    system("clear");
	print("\n");

    # Processing input.
    if ($option eq 1 || $option eq "d") {
        # Chose Distance.
        &dist; # Call distance menu.
    } elsif ($option eq 2 || $option eq "t") {
        # Chose Temperature.
        &temp; # Call temperature menu.
    } elsif ($option eq 3 || $option eq "ds") {
        # Chose Data Sizes.
        &data; # Call data sizes menu.
    } elsif ($option eq "q") {
        # Chose Quit.
		print("Exiting...\n\n");
        exit; # Exit script.
    } else {
	# Clear terminal.
	system("clear");

    # Input not recognised.
    print ("I'm sorry, $option was not reconised.\n");

    # Re-call menu.
    &init;
    }
}

# Distance module.
sub dist {
	# Variables.
	# Unit names in order.
	my @names = (
	"Nanometres", "Millimetres", "Centimetres", "Metres",
	"Kilometres", "Inches", "Feet", "Yards",
	"Miles", "Nautical Miles"
	);

	# Unit values in order and to the standard unit.
	my @convs = (
	1000000000, 1000, 100, 0,
	1000, 0.0254, 0.3048, 0.9144,
	1609.34, 1852
	);

	# The standard unit for this measurement.
	# Set to the Nth variable in the convs array.
	# Remember to zero index e.g. the 4th value is 3.
	my $stdUnit = 3;

	# Variables for calculation.
	my $opt1; 	   	# First option, unit to be converted from.
	my $zopt1;		# Zero indexed opt 1
    my $opt2; 	   	# Second option, unit to be converted into.
	my $zopt2;		# Zero indexed opt 2
    my $value;    	# Value to be converted.
    my $stdValue;	# Value when standardised.
    my $answer;   	# Answer to request.

	# Menu text.
    print ("Choose from the following options:\n\n");
    print ("1 - ",$names[0],"\t6 - ",$names[5],"\n");
    print ("2 - ",$names[1],"\t7 - ",$names[6],"\n");
    print ("3 - ",$names[2],"\t8 - ",$names[7],"\n");
    print ("4 - ",$names[3],"\t9 - ",$names[8],"\n");
    print ("5 - ",$names[4],"\t10- ",$names[9],"\n\n");
    print ("m - Main Menu.    q - Quit\n\n");

    # Take inputs.
    print ("From option: "); # Ask for option 1.
    $opt1 = <>;       # Take input.
    chomp ($opt1);    # Clean input.

    # Check for main menu or quit in option 1.
    if ($opt1 eq "m") {
        # Move to main menu.
		# Clear terminal.
		system("clear");
        print ("\n");
        &init;
    } elsif ($opt1 eq "q") {
        # Exit script.
        print ("\nExiting...\n\n");
        exit;
    }

    print (" To option : "); # Ask for option 2.
    $opt2 = <>;       # Take input.
    chomp ($opt2);    # Clean input.

    # Check for main menu or quit in option 2.
    if ($opt2 eq "m") {
        # Move to main menu.
		# Clear terminal.
		system("clear");
        print ("\n");
        &init;
    } elsif ($opt2 eq "q") {
        # Exit script.
        print ("\nExiting...\n\n");
        exit;
    }

    print ("   Value   : "); # Ask for value of option 1.
    $value = <>;       # Take input.
    chomp ($value);    # Clean input.
    print ("\n");       # Made some space after inputs.

	# Zero index all inputs.
	$zopt1 = $opt1 - 1;
	$zopt2 = $opt2 - 1;

	# Convert the value to the standard unit and then into the answer.
	if ($zopt1 lt $stdUnit) {
		# Converting from a smaller unit.
		$stdValue = $value / $convs[$zopt1];
	} elsif ($zopt1 eq $stdUnit) {
		# Not converting, it's the same unit.
		$stdValue = $value;
	} else {
		# Converting from a larger unit.
		$stdValue = $value * $convs[$zopt1];
	}

	# Convert from standard value (metres) into the wanted unit.
	if ($zopt2 lt $stdUnit) {
		# Convert into wanted unit.
		$answer = $stdValue * $convs[$zopt2];
	} elsif ($zopt2 eq $stdUnit) {
		# Don't convert, but display the same value.
		$answer = $stdValue;
	} else {
		# Convert into wanted unit.
		$answer = $stdValue / $convs[$zopt2];
	}

	# Clear terminal.
	system("clear");

	# Put answer at the top of screen.
	print($value," ",$names[$zopt1]," are about ",$answer," ",$names[$zopt2],".\n");

	# Re-print menu.
	&dist;
}

# Temperature module.
sub temp {
	# Variables
	my @rules = ([
		"Metres", "Kilometres"
	],[
		1000, 1
	],[[
		"5","4","3"
	],[
		"5","6","7"
	],[
		"5","10","15"
	]]);

	print("name ",$rules[0][0]," value ",$rules[1][0],".\nname ",$rules[0][1]," value ",$rules[1][1],".\n");
	print("Test:",$rules[2][0][1]," \n");
}

# Data size module.
sub data {
	# Variables.

}
