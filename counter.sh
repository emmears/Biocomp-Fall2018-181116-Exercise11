##this script will take each proteomes hmmsearch output in the form of a .txt file and
# count how many counts or hits were found during the hmmsearch 
#how to use this script: bash counter.sh *.fasta.txt

#using a for loop
for proteome in $@
do
cat $proteome | grep -v "#" > ${file}count.txt
counted = 'cat ${proteome}count.txt | wc -l'
proteome= 'echo $proteome'
echo $proteome,$counted >> total_counts.csv
done
