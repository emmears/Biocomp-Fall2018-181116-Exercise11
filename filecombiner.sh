#this script takes all of the transporter files and combines them into one combined .fasta
for transporter in $@
do
echo " " >> $transporter #this function adds the necessary new line character \n at the end of each document and  assigns it to variable name transporter 
cat $transporter >> transporter_combined.fasta #this cats the file information of the transporter variable and appends it to combined transporter fasta
done
