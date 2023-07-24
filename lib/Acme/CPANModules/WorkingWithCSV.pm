package Acme::CPANModules::WorkingWithCSV;

use strict;
use Acme::CPANModulesUtil::Misc;

# AUTHORITY
# DATE
# DIST
# VERSION

my $text = <<'_';
The following are tools (modules and scripts) to work with the CSV format:


**Parsing**

First things first, the most important module to work with CSV in Perl is
<pm:Text::CSV> (which will use <pm:Text::CSV_XS> backend when possible but fall
back to <pm:Text::CSV_PP> otherwise). It's not in core, but only a cpanm command
away.


**Generating CSV from Perl array/structure**

<pm:Text::CSV> (as well as <pm:Text::CSV_XS>) can render a line of CSV from Perl
array(ref) with their `say()` method.

<prog:dd2csv> from <pm:App::CSVUtils>

<pm:Perinci::CmdLine> framework can render function result (CLI output) as CSV.


**Converting to/from other formats**

*INI*: <prog:ini2csv> from <pm:App::TextTableUtils>

*TSV*: <prog:csv2tsv> and L<prog:tsv2csv> from <pm:App::CSVUtils>

*LTSV*: <prog:csv2ltsv> from <pm:App::CSVUtils> and L<prog:ltsv2csv> from
<pm:App::LTSVUtils>

*XLS* and *XLSX*: <prog:csv2tsv> and <prog:tsv2csv> from <pm:App::CSVUtils>

*JSON*: <prog:csv2json> and <prog:json2csv> from <pm:App::TextTableUtils>

*Markdown table*: <prog:csv2mdtable> from <pm:App::TextTableUtils>

*Org table*: <prog:csv2orgtable> from <pm:App::TextTableUtils>

*SQLite database*: <prog:csv2sqlite> from <pm:App::SQLiteUtils>


**Rendering as text/ASCII table**

<prog:csv2texttable> from <pm:App::TextTableUtils>


**Changing field separator character, field quote character, and/or escape character**

<prog:csv-csv> from <pm:App::CSVUtils>


**Adding/removing columns**

<prog:csv-add-fields>, <prog:csv-delete-field>, <prog:csv-select-fields> from
<pm:App::CSVUtils>


**Processing columns of CSV with Perl code**

<prog:csv-munge-field> from <pm:App::CSVUtils>


**Processing rows of CSV with Perl code**

Aside from the obvious <pm:Text::CSV>, you can also use <prog:csv-each-row>,
<prog:csv-munge-row>, <prog:csv-mp> from <pm:App::CSVUtils>.


**Merging rows from several CSV files into one**

<prog:csv-setop>, <prog:csv-concat> from <pm:App::CSVUtils>


**Splitting a CSV file into several**

<prog:csv-split> from <pm:App::CSVUtils>


**Sorting CSV rows**

<prog:csv-sort> from <pm:App::CSVUtils>


**Sorting CSV columns**

<prog:csv-sort-fields> from <pm:App::CSVUtils>


**Filtering CSV columns**

<prog:csv-select-fields> from <pm:App::CSVUtils>


**Filtering CSV rows**

<prog:csv-grep> and <prog:csv-select-rows> from <pm:App::CSVUtils>

<prog:csvgrep> from <pm:csvgrep>


**Transposing CSV**

<prog:csv-transpose> from <pm:App::CSVUtils>


**Summing and averaging rows**

<prog:csv-sum> and <prog:csv-avg> from <pm:App::CSVUtils>


**Producing frequency table from CSV**

<prog:csv-freqtable> from <pm:App::CSVUtils>


**Performing set operations (intersection, union, difference) on CSV**

<prog:csv-setop> from <pm:App::CSVUtils>


** Other modules/unorganized

<pm:Data::CTable>

_

our $LIST = {
    summary => 'Working with CSV (comma-separated value) data in Perl',
    description => $text,
    tags => ['task'],
};

Acme::CPANModulesUtil::Misc::populate_entries_from_module_links_in_description;

1;
# ABSTRACT:

=head1 prepend:SEE ALSO

L<App::CSVUtils::Manual::Cookbook>

The See Also section in L<App::CSVUtils> documentation

L<Acme::CPANModules::WorkingWithXLS>
