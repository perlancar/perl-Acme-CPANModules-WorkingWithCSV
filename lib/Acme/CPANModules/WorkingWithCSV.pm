package Acme::CPANModules::WorkingWithTree;

# AUTHORITY
# DATE
# DIST
# VERSION

use strict;
use Acme::CPANModulesUtil::Misc;

my $text = <<'_';
**Basic modules**

First things first, the most important module to work with CSV in Perl is
<pm:Text::CSV> (which will use <pm:Text::CSV_XS> backend when possible but fall
back to <pm:Text::CSV_PP> otherwise). It's not in core, but only a cpanm command
away.

Below are other modules, tools, and recipes related to CSV, organized by task.

Keyword: CSV, TSV, comma-separated


**Changing field separator character, field quote character, and/or escape character**

TODO

See also: *Converting CSV to TSV*, *Converting TSV to CSV*.


**Converting CSV to data structure**

Using Text::CSV:

    my $aoa = csv(in => "data.csv");

CLI: <prog:csv-dump> from <pm:App::CSVUtils>


**Converting CSV to TSV**

TODO


**Converting TSV to CSV**

TODO


**Filtering CSV columns**

Problem: you only want to pick some CSV columns.

TODO


**Filtering CSV rows**

Problem: you only want to pick some CSV rows based on some criteria.

Using grep: If the pattern is simple enough, then the Unix command `grep` and
its friends can be used. If your CSV has header, you can do this to make sure
the header row is always returned:

    % head -n1 YOUR.CSV; tail -n +2 YOUR.CSV | grep PATTERN

Using csvgrep CLI: <prog:csvgrep> (from <pm:csvgrep>) allows you grep certain
columns only and/or output certain columns only. It displays the result in a
text table though.

Using csv-grep CLI: <prog:csv-grep> (from <pm:App::CSVUtils>) works more like
Perl's grep. It allows you to specify a Perl code which is presented the current
CSV row as an arrayref (or hashref, if you use `-H`) and expected to return
a boolean value to determine whether that row should be included or not.

**Transposing CSV**

TODO


_

our $LIST = {
    summary => 'Working with CSV (comma-separated value) data in Perl',
    description => $text,
    tags => ['task'],
};

Acme::CPANModulesUtil::Misc::populate_entries_from_module_links_in_description;

1;
# ABSTRACT:
