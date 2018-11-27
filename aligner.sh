#this script will align the combined file sequences using the sequence aligner muscle 
#uses a for loop 
#usage: bash aligner.sh transporter_combined.fasta
for transporter in $@
do 
../muscle3.8.31_i86linux64 -in "$transporter" -out ${transporter}_aligned.fasta
done
