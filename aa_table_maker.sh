# use 'bash aa_table_maker.sh INPUT.LR.fa outputfile' without the quotes at the terminal to run

# needs aa_index.pl to be present.

# $1 is first argument (the file to analyse, can be a list or a .LR.fa fasta file)

# $2 is used in the paste command as the final output filename

# the commands below assume a 16 mer peptide....

# Your ouput file will contain the table for importing into e.g. Libreoffice Calc.
# Select the data there, choose Insert>Chart>Stacked Chart>Next
# Then select "Data Series in rows" and tick both first row and first column as labels & then finish

# process all 16 amino acids in the variable region:
perl aa_index.pl $1 1 >1
perl aa_index.pl $1 2 >2
perl aa_index.pl $1 3 >3
perl aa_index.pl $1 4 >4
perl aa_index.pl $1 5 >5
perl aa_index.pl $1 6 >6
perl aa_index.pl $1 7 >7
perl aa_index.pl $1 8 >8
perl aa_index.pl $1 9 >9
perl aa_index.pl $1 10 >10
perl aa_index.pl $1 11 >11
perl aa_index.pl $1 12 >12
perl aa_index.pl $1 13 >13
perl aa_index.pl $1 14 >14
perl aa_index.pl $1 15 >15
perl aa_index.pl $1 16 >16

# this prints the list of amino acids from the first column of the first file
# to be used as the first column in the final output table
awk 'NR>1 {print $1;}' <1 >aa_list 

#in the first column (the list of amino acids), insert a newline with "a.a" at the start. 
#This fudge helps align the columns properly
sed -i '1 i\a.a.' aa_list

# strip out only the percentage values from the tabulated data
awk '{print $3;}' <1 >1_percents
awk '{print $3;}' <2 >2_percents
awk '{print $3;}' <3 >3_percents
awk '{print $3;}' <4 >4_percents
awk '{print $3;}' <5 >5_percents
awk '{print $3;}' <6 >6_percents
awk '{print $3;}' <7 >7_percents
awk '{print $3;}' <8 >8_percents
awk '{print $3;}' <9 >9_percents
awk '{print $3;}' <10 >10_percents
awk '{print $3;}' <11 >11_percents
awk '{print $3;}' <12 >12_percents
awk '{print $3;}' <13 >13_percents
awk '{print $3;}' <14 >14_percents
awk '{print $3;}' <15 >15_percents
awk '{print $3;}' <16 >16_percents

# The following line joins all percentage files together for importing into Libreoffice Calc for plotting.

paste aa_list 1_percents 2_percents	3_percents	4_percents	5_percents	6_percents	7_percents	8_percents	9_percents	10_percents	11_percents	12_percents	13_percents	14_percents	15_percents	16_percents	>$2

