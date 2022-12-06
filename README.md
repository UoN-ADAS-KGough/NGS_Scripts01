# NGS_Scripts01
Collection of Perl scripts for processing Ion Torrent NGS data, specifically for data derived from amplicon sequencing of phage display libraries used in  panning experiments.

Main script is pipleine.pl for processing Ion Torrent FASTQ files.

CompareZ_2.1.pl is used to calculate Z score values for a positive and control experimental panning pair.

barcodes.txt contains a list of Ion Torrent barcodes in the format expected by pipeline.pl

AEGEF.txt and DPAKA.txt are files containing the N- and C-terminal amino acid sequnces flanking a randomised insert for a pC89 derived library. Modification of these files permits other flanking sequences derived from different libraries to be identified.


