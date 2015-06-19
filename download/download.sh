# Presence/absence of expression (Simple file)
wget --timestamping ftp://lausanne.isb-sib.ch/pub/databases/Bgee/current/download/calls/expr_calls/Homo_sapiens_expr-simple.tsv.zip
unzip -o Homo_sapiens_expr-simple.tsv.zip && rm Homo_sapiens_expr-simple.tsv.zip
gzip Homo_sapiens_expr-simple.tsv

# Over-/Under-expression across anatomy (Simple file)
wget --timestamping ftp://lausanne.isb-sib.ch/pub/databases/Bgee/current/download/calls/diff_expr_calls/Homo_sapiens_diffexpr-anatomy-simple.tsv.zip
unzip -o Homo_sapiens_diffexpr-anatomy-simple.tsv.zip && rm Homo_sapiens_diffexpr-anatomy-simple.tsv.zip
gzip Homo_sapiens_diffexpr-anatomy-simple.tsv
