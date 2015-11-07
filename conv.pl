#!/usr/bin/perl
use strict;
use warnings;

# Convertinator - a simple conversion tool for unix systems.
# Made by github.com/JetLaggedEgg.

# Title for script.
print ("\nWelcome to Convertinator.\n");

&menu;     # Activate menu on load.

# Main menu block.
sub menu {
  # Variables.
  my $option = "";    # Declaring empty option variable.

  # Menu text.
  print ("What would you like to convert?\n\n");
  print ("1 - Distance.\n");
  print ("2 - Temperature.\n");
  print ("q - Quit\n\n");

  # Input.
  print ("Option: "); # Ask for option.
  $option = <>;       # Take input.
  chomp ($option);    # Clean input.
  print ("\n");       # Made some space after input.

  # Processing input.
  if ($option eq 1) {
    # Chose Distance.
    &distMenu; # Call distance menu.
  } elsif ($option eq 2) {
    # Chose Temperature.
    &tempMenu; # Call temperature menu.
  } elsif ($option eq "q") {
    # Chose Quit.
    exit; # Exit script.
  } else {
    # Input not recognised.
    print ("I'm sorry, $option was not reconised.\n\n");
    # Re-call menu.
    &menu;
  }
}

# Distance menus.
sub distMenu {
  # Menu variables.
  my $opt1 = "";    # First option, one to be converted.
  my $opt2 = "";    # Second option, to be converted into.
  my $value = "";   # Value to be converted.
  my $stdvalue = "";   # Value when standardised.
  my $answer = "";   # Answer to request.

  # Menu text.
  print ("\nChoose from the following options:\n\n");
  print ("1 - Nanometres.   6 - Inches.\n");
  print ("2 - Millimetres.  7 - Feet.\n");
  print ("3 - Centimetres.  8 - Yards.\n");
  print ("4 - Meters.       9 - Miles.\n");
  print ("5 - Kilometres.  10 - Naut Miles.\n\n");
  print ("m - Main Menu.    q - Quit\n\n");

  # Take inputs.
  print ("From option: "); # Ask for option 1.
  $opt1 = <>;       # Take input.
  chomp ($opt1);    # Clean input.

  # Check for main menu or quit.
  if ($opt1 eq "m") {
   # Move to main menu.
   print ("\n");
   &menu;
  } elsif ($opt1 eq "q") {
   # Exit script.
   print ("\nExiting...\n\n");
   exit;
  }

  print (" To option : "); # Ask for option 2.
  $opt2 = <>;       # Take input.
  chomp ($opt2);    # Clean input.

  print ("   Value   : "); # Ask for value of option 1.
  $value = <>;       # Take input.
  chomp ($value);    # Clean input.
  print ("\n");       # Made some space after inputs.

  # Processing input.
  # Any value input is converted into metres, then converted into the wanted value.
  # This way a rule doesn't have to be written for every possible outcome or input combination.

  # Test $opt1 and convert $value to metres as standard.
  if ($opt1 eq 1) {
    # Convert from nanometres.
    $opt1 = "nanometres"; # Rename option 1 for answer.
    $stdvalue = $value / 1000000000;
  } elsif ($opt1 eq 2) {
    # Convert from millimetres.
    $opt1 = "millimetres"; # Rename option 1 for answer.
    $stdvalue = $value / 1000;
  } elsif ($opt1 eq 3) {
    # Convert from centimetres.
    $opt1 = "centimetres"; # Rename option 1 for answer.
    $stdvalue = $value / 100;
  } elsif ($opt1 eq 4) {
    # Convert from metres.
    $opt1 = "metres"; # Rename option 1 for answer.
    $stdvalue = $value; # duh -_-
  } elsif ($opt1 eq 5) {
    # Convert from kilometres.
    $opt1 = "kilometres"; # Rename option 1 for answer.
    $stdvalue = $value * 1000;
  } elsif ($opt1 eq 6) {
    # Convert from inches.
    $opt1 = "inches"; # Rename option 1 for answer.
    $stdvalue = $value * 0.0254;
  } elsif ($opt1 eq 7) {
    # Convert from feet.
    $opt1 = "feet"; # Rename option 1 for answer.
    $stdvalue = $value * 0.3048;
  } elsif ($opt1 eq 8) {
    # Convert from yards.
    $opt1 = "yards"; # Rename option 1 for answer.
    $stdvalue = $value * 0.9144;
  } elsif ($opt1 eq 9) {
    # Convert from miles.
    $opt1 = "miles"; # Rename option 1 for answer.
    $stdvalue = $value * 1609.34;
  } elsif ($opt1 eq 10) {
    # Convert from nautical miles which are different for some reason...
    $opt1 = "nautical miles"; # Rename option 1 for answer.
    $stdvalue = $value * 1852;
  } else {
    # Input not recognised.
    print ("I'm sorry, option \'$opt1\' was not reconised.\n\n");
    # Re-call menu.
    &distMenu;
  }

  # Test $opt2 and convert standardised $value into required amount.
  # At this point, $value will always be metres.
  if ($opt2 eq 1) {
    # Convert to nanometres.
    $answer = $stdvalue * 1000000000;
    printf ("$value $opt1 is about %.3f nanometers.\n\n", $answer); #Print'n'round.
  } elsif ($opt2 eq 2) {
    # Convert to millimetres.
    $answer = $stdvalue * 1000;
    printf ("$value $opt1 is about %.3f millimetres.\n\n", $answer); #Print'n'round.
  } elsif ($opt2 eq 3) {
    # Convert to centimetres.
    $answer = $stdvalue * 100;
    printf ("$value $opt1 is about %.3f centimetres.\n\n", $answer); #Print'n'round.
  } elsif ($opt2 eq 4) {
    # Convert to metres.
    $answer = $stdvalue; # duh -_-
    printf ("$value $opt1 is about %.3f metres.\n\n", $answer); #Print'n'round.
  } elsif ($opt2 eq 5) {
    # Convert to kilometres.
    $answer = $stdvalue / 1000;
    printf ("$value $opt1 is about %.3f kilometres.\n\n", $answer); #Print'n'round.
  } elsif ($opt2 eq 6) {
    # Convert to inches.
    $answer = $stdvalue / 0.0254;
    printf ("$value $opt1 is about %.3f inches.\n\n", $answer); #Print'n'round.
  } elsif ($opt2 eq 7) {
    # Convert to feet.
    $answer = $stdvalue / 0.3048;
    printf ("$value $opt1 is about %.3f feet.\n\n", $answer); #Print'n'round.
  } elsif ($opt2 eq 8) {
    # Convert to yards.
    $answer = $stdvalue / 0.9144;
    printf ("$value $opt1 is about %.3f yards.\n\n", $answer); #Print'n'round.
  } elsif ($opt2 eq 9) {
    # Convert to miles.
    $answer = $stdvalue / 1609.34;
    printf ("$value $opt1 is about %.3f miles.\n\n", $answer); #Print'n'round.
  } elsif ($opt2 eq 10) {
    # Convert to nautical miles.
    $answer = $stdvalue / 1852;
    printf ("$value $opt1 is about %.3f nautical miles.\n\n", $answer); #Print'n'round.
  } else {
    # Input not recognised.
    print ("I'm sorry, option \'$opt2\' was not reconised.\n\n");
  }

  # Re-call menu.
  &distMenu;
}

# Temperature menus.
sub tempMenu {
  # Menu variables.
  my $opt1 = "";    # First option, one to be converted.
  my $opt2 = "";    # Second option, to be converted into.
  my $value = "";   # Value to be converted.
  my $stdvalue = "";   # Value when standardised.
  my $answer = "";   # Answer to request.

  # Menu text.
  print ("\nChoose from the following options:\n\n");
  print ("1 - Celsius.      2 - Fahrenheit.\n");
  print ("3 - Kelvin.\n\n");
  print ("m - Main Menu.    q - Quit\n\n");

  # Take inputs.
  print ("From option: "); # Ask for option 1.
  $opt1 = <>;       # Take input.
  chomp ($opt1);    # Clean input.

  # Check for main menu or quit.
  if ($opt1 eq "m") {
   # Move to main menu.
   print ("\n");
   &menu;
  } elsif ($opt1 eq "q") {
   # Exit script.
   print ("\nExiting...\n\n");
   exit;
  }

  print (" To option : "); # Ask for option 2.
  $opt2 = <>;       # Take input.
  chomp ($opt2);    # Clean input.

  print ("   Value   : "); # Ask for value of option 1.
  $value = <>;       # Take input.
  chomp ($value);    # Clean input.
  print ("\n");       # Made some space after inputs.

  # Processing input.
  # Any value input is converted into metres, then converted into the wanted value.
  # This way a rule doesn't have to be written for every possible outcome or input combination.

  # Test $opt1 and convert $value to metres as standard.
  if ($opt1 eq 1) {
    # Convert from celsius.
    $opt1 = "degrees celsius"; # Rename option 1 for answer.
    $stdvalue = $value;
  } elsif ($opt1 eq 2) {
    # Convert from farhrenheit.
    $opt1 = "degrees farhrenheit"; # Rename option 1 for answer.
    $stdvalue = ($value - 32) / 1.8000;
  } elsif ($opt1 eq 3) {
    # Convert from kelvin.
    $opt1 = "degrees kelvin"; # Rename option 1 for answer.
    $stdvalue = $value - 273.15;
  } else {
    # Input not recognised.
    print ("I'm sorry, option \'$opt1\' was not reconised.\n\n");
    # Re-call menu.
    &tempMenu;
  }

  # Test $opt2 and convert standardised $value into required amount.
  # At this point, $value will always be metres.
  if ($opt2 eq 1) {
    # Convert to celsius.
    $answer = $stdvalue;
    printf ("$value $opt1 is about %.3f celsius.\n\n", $answer); #Print'n'round.
  } elsif ($opt2 eq 2) {
    # Convert to fahrenheit.
    $answer = (($stdvalue * 9) / 5) + 32;
    printf ("$value $opt1 is about %.3f fahrenheit.\n\n", $answer); #Print'n'round.
  } elsif ($opt2 eq 3) {
    # Convert to kelvin.
    $answer = $stdvalue - 273.15;
    printf ("$value $opt1 is about %.3f kelvin.\n\n", $answer); #Print'n'round.
  } else {
    # Input not recognised.
    print ("I'm sorry, option \'$opt2\' was not reconised.\n\n");
  }

  # Re-call menu.
  &tempMenu;
}
