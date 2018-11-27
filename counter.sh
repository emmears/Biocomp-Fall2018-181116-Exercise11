##this script will take each proteomes hmmsearch output in the form of a .txt file and
# count how many counts or hits were found during the hmmsearch 
#how to use this script: bash counter.sh *.fasta.txt

#using a for loop
for proteome in $@ #select all files that are .fasta.txt
do
cat $proteome | grep -v "#" > ${file}count.txt #this cats each file and reverse greps the # which is a count and puts each file's hits into its out count.txt document
counted = 'cat ${proteome}count.txt | wc -l' #define a variable that is the cat proteome file and counts the number of lines 
proteome= 'echo $proteome' #define a variable that is the  name of the proteome
echo $proteome,$counted >> total_counts.csv #append each counts of hits and the name of each into a csv with these two columns 
done
