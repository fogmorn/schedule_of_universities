## Lib.pm
##
## This module is for database interaction
##

package Lib;

use strict;
use warnings;
use v5.10;
use DBI;

# Exporting variable
use vars qw/$dbh/;

$dbh = DBI->connect( "DBI:mysql:less", "lesson", "" )
   or die("Error connecting to database: $DBI::errstr\n");

$dbh->do("SET NAMES 'utf8'");

1;
