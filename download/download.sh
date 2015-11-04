bgee_version=bgee_v13_1

## Presence/absence of expression
expr_calls_url="ftp://ftp.bgee.org/$bgee_version/download/calls/expr_calls"

# Simple file
filename=Homo_sapiens_expr-simple.tsv
wget --timestamping $expr_calls_url/$filename.zip
unzip -o $filename.zip && rm $filename.zip
gzip --force $filename

# Complete file
filename=Homo_sapiens_expr-complete.tsv
wget --timestamping $expr_calls_url/$filename.zip
unzip -o $filename.zip && rm $filename.zip
gzip --force $filename


## Differential expression
diffex_calls_url="ftp://ftp.bgee.org/$bgee_version/download/calls/diff_expr_calls"

# Over-/Under-expression across anatomy (Simple file)
filename=Homo_sapiens_diffexpr-anatomy-simple.tsv
wget --timestamping $diffex_calls_url/$filename.zip
unzip -o $filename.zip && rm $filename.zip
gzip --force $filename
