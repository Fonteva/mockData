#!/bin/sh

ls 2018-R2/ | egrep 'json' | perl -e 'print "<html><body><ul>"; while(<>) { chop $_; print "<li><a href=\"./$_\">$_</a></li>";} print "</ul></body></html>"' > index.html
