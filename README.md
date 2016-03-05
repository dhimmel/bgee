# Extracting anatomy-specific gene expression in humans from Bgee

[Bgee](http://bgee.org/) is a database that integrates gene expression data from both microarray and RNA-seq experiments. The Bgee curators annotate samples by their species, anatomical structure, and developmental stage. Bgee leverages anatomy and development ontologies to call whether a gene is present or absent and under/over-epxressed in a given condition.

Here, we process Bgee to generate gene expression profiles for human anatomical structures (tissues). We extract two gene expression measures:

+ gene presence — whether a gene is expressed or not in a given anatomy for adult humans. See the results at [`data/present-in-adult.tsv.gz`](data/present-in-adult.tsv.gz).
+ differential expression — whether a gene is under or over-expressed in a given anatomy for post-juvenile adults. See the results at [`data/diffex.tsv.gz`](data/diffex.tsv.gz).

See our _Thinklab_ [project](http://doi.org/10.15363/thinklab.40 "Repurposing drugs on a hetnet") and [discussion on processing Bgee](http://doi.org/10.15363/thinklab.d124 "Processing Bgee for tissue-specific gene presence and over/under-expression") for additional context.

## Execution

Execute `download.sh` from the `download` directory to retrieve the raw Bgee downloads.

Then the notebooks are executed in the following order:

1. [`developmental-stages.ipynb`](developmental-stages.ipynb) — extract a table of developmental stages ([`data/stages.tsv`](data/stages.tsv)). This table is used to filter for adult stages.
2. [`bgee.ipynb`](bgee.ipynb) — process raw Bgee data and extract gene presence and differential expression datasets.

## License

All original content in this repository is released under [CC0 1.0](https://creativecommons.org/publicdomain/zero/1.0/ "Creative Commons · Public Domain Dedication"). Please refer to [Bgee](http://bgee.org/) for the licensing and reuse of their data.
