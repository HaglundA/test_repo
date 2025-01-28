#!/usr/bin/env nextflow

process singleCellAnalysis {
    input:
    path input_file

    output:
    path "results/*"

    script:
    """
    python3 singlecell_analysis.py --input \${input_file} --output results/
    """
}

workflow {
    params.input_file = 'data/input_file.csv'
    singleCellAnalysis(params.input_file)
}
