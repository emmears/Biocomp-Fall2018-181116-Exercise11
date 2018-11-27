##This script has two components that use two different functions of the hmmer-3.2.1 
#the first function is hmmbuild which creates a hmm profile for the combined and aligned files
hmmbuild transporterprofile.hmm transporter_combined.fasta_aligned.fasta

#the second function is hmmsearch which looks through the newly made hmm profile file made my hmmbuild above to compare to all 8 proteomes files  for matches
#to run this script: bash hmmerbuild_n_search.sh *.fasta
for transporter in $@
do
hmmsearch --tblout "$transporter.txt" transporterprofile.hmm $transporter
done
