#!/usr/bin/perl
use strict;
use warnings;

# This scipt will be a massive conversion tool, the following measurements and
# scales are planned to be implemented:
#       - Distance (imperials, coverters from and to metric too!).
#       - Time (nanoseconds, seconds, minutes, hours, days).
# I might also covert the script to bash, but for now I wanna learn Perl!

# Call main menu.
&menu;

# Entire system block:
sub menu {
  # Menu Variables.

  my $option = "";

  # Menu text.
  print ("\nWelcome to covertinator.\n");
  print ("What would you like to convert?\n\n");
  print ("1 - Distance (metric).\n");
  print ("2 - Temperature.\n\n");
  print ("Option: ");
  $option = <>;
  chomp ($option);

  if ($option eq 1) {
    # Option was distance (metric).

    my $distOpt = "";
    my $dvalue = "";

    # Distance menu
    print ("Selected metric distance.\n");
    print ("What would you like to convert from and into?\n\n");
    print ("1 - MM into M.\n");
    print ("2 - M into MM.\n");
    print ("3 - M into KM.\n");
    print ("4 - KM into M.\n");
    print ("5 - CM into M.\n");
    print ("6 - M into CM.\n\n");

    # Option input.
    print ("Option: ");
    $distOpt = <>;
    chomp ($distOpt);

    # Value input.
    print ("\nValue: ");
    $dvalue = <>;
    chomp ($dvalue);

    # Make a space for answer.
    print ("\n");

    # Check option and complete required math.
    if ($distOpt eq 1) {
      # Was MM into M.
      print ("$dvalue millimeter(s) is equal to ", $dvalue / 1000, " meter(s).\n\n");
    }
    elsif ($distOpt eq 2) {
      # Was M into MM.
      print ("$dvalue meter(s) is equal to ", $dvalue * 1000, " millimeter(s).\n\n");
    }
    elsif ($distOpt eq 3) {
      # Was M into KM.
      print ("$dvalue meter(s) is equal to ", $dvalue / 1000, " kilometers.\n\n");
    }
    elsif ($distOpt eq 4) {
      # Was KM into M.
      print ("$dvalue meter(s) is equal to ", $dvalue * 1000, " kilometers.\n\n");
    }
    elsif ($distOpt eq 5) {
      # Was CM into M.
      print ("$dvalue centimeter(s) is equal to ", $dvalue / 1000, " meter(s).\n\n");
    }
    elsif ($distOpt eq 6) {
      # Was M into CM.
      print ("$dvalue meter(s) is equal to ", $dvalue * 1000, " centimeter(s).\n\n");
    }
    else {
      # Not an option.
      print ("Option not recognised.\n\n");
    }
  }

  ## Time will be added here soon...

  elsif ($option eq 2) {
    # Option was temperature.

    my $tempOpt = "";
    my $tvalue = "";

    # Temperature menu
    print ("\nSelected temperature\n.");
    print ("What would you like to convert from and into?\n\n");
    print ("1 - Fahrenheit into Celsius.\n");
    print ("2 - Fahrenheit into Kelvin.\n");
    print ("3 - Celsius into Fahrenheit.\n");
    print ("4 - Celsius into Kelvin.\n");
    print ("5 - Kelvin into Celsius.\n");
    print ("6 - Kelvin into Fahrenheit.\n\n");

    # Option input.
    print ("Option: ");
    $tempOpt = <>;
    chomp ($tempOpt);

    # Value input.
    print ("Value: ");
    $tvalue = <>;
    chomp ($tvalue);

    # Make a space for answer.
    print ("\n");

    # Check option and complete required math.
    if ($tempOpt eq 1) {
      # Was F into C.
      print ("$tvalue degrees fahrenheit is equal to ", ($tvalue - 32) / 1.8000 , " degrees celsius.\n\n");
    }
    elsif ($tempOpt eq 2) {
      # Was F into K.
      print ("$tvalue degrees fahrenheit is equal to ", (($tvalue - 32) / 1.8000) + 273.15 , " degrees kelvin.\n\n");
    }
    elsif ($tempOpt eq 3) {
      # Was C into F.
      print ("$tvalue degrees celsius is equal to ", (($tvalue * 9) / 5) + 32 , " degrees fahrenheit.\n\n");
    }
    elsif ($tempOpt eq 4) {
      # Was C into K.
      print ("$tvalue degrees celsius is equal to ", $tvalue + 273.15 , " degrees kelvin.\n\n");
    }
    elsif ($tempOpt eq 5) {
      # Was K into C.
      print ("$tvalue degrees kelvin is equal to ", $tvalue - 273.15 , " degrees celsius.\n\n");
    }
    elsif ($tempOpt eq 6) {
      # Was K into F.
      print ("$tvalue degrees kelvin is equal to ", ((($tvalue - 273.15) * 9) / 5) + 32 , " degrees fahrenheit.\n\n");
    }
    else {
      # Not an option.
      print ("Option not recognised.\n\n");
    }
  }
  else {
    # Not an option.
    print ("Option not recognised.\n\n");
  }
}

# Produced by Daniel Sarracayo http://github.com/jetlaggedegg
