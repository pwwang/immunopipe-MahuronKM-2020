# immunopipe-MahuronKM-2020


Reanalysis of the scRNA-seq and scTCR-seq data from [Mahuron, Kelly M., et al. 2020](https://rupress.org/jem/article/217/9/e20192080/151858/Layilin-augments-integrin-activation-to-promote) using [immunopipe](https://github.com/pwwang/immunopipe).

> [Mahuron, Kelly M., et al. "Layilin augments integrin activation to promote antitumor immunity." Journal of Experimental Medicine 217.9 (2020).](https://rupress.org/jem/article/217/9/e20192080/151858/Layilin-augments-integrin-activation-to-promote)
>

## Data preparation

The data was downloaded from [GSE148190](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE148190), where 2 samples from 1 patient were sequenced with scRNA-seq and scTCR-seq.

See `prepare-data.sh` for details.

## Configuration

> [!NOTE]
> This is not a replication of the original paper. We only selected 2 samples with paired scRNA-seq and scTCR-seq data available.
>

We used a minimal configuration for the analysis, which includes very basic steps such as cell filtering, clustering, and differential expression analysis. The configuration can be found in `Immunopipe.config.toml`.

This demonstrates the potential of `immunopipe` for analyzing datasets with very few samples.

## Results/Reports

You can find the results in the `Immunopipe-output` directory.

The report can be found at [https://imp-mahuronkm-2020.pwwang.com/REPORTS](https://imp-mahuronkm-2020.pwwang.com/REPORTS).
