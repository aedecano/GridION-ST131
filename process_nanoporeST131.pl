$nanopore = $ARGV[0];

open(pore, $nanopore);

while(<pore>){
    chomp;
    $x = $_;
#BASECALL: Albacore
system("read_fast5_basecaller.py --input $fast5_folder --save_path GridION_out_ST131/ --flowcell FLO-MIN106 --kit SQK-LSK108 --worker_threads 4 --recursive -
-barcoding --output fast5,fastq");

#QC CHECK: MinIONQC
system("Rscript /usr/bin/MinIONQC.R -i sequencing_summary.txt");

#TRIM ADAPTER: Porechop
    system("porechop -i $fastq_folder/${x}.fastq -o /media/newdrive/arun/GridION_Files/PorechopFQs_GridION/${x}.trimmed.fastq");

#HYBRID ASSEMBLY: Unicycler
system("unicycler -1 ${x}_1.fastq.gz -2 ${x}_2.fastq.gz -l $x.trimmed.fastq -o GridION_HybridAssembly_$x --pilon_path /media/newdrive/arun/MinIONdata_Sanger/
ConcatFQtrim_porechop/pilon-1.22.jar --spades_path /media/newdrive/arun/MinIONdata_Sanger/ConcatFQtrim_porechop/SPAdes-3.12.0-Linux/bin/spades.py");

#IDENTIFY PLASMID-ASSOCIATED CONTIGS: mlplasmids
system("Rscript runMLplasmids.R");

#EXTRACT PLASMID-ASSOCIATED CONTIGS: Samtools faidx
#    samtools faidx improved_assembly.fasta contig_number > contig_number_plasmid.fasta

#ANNOTATE
#    a. BLAST CONTIGS AGAINST PLASMID DATABASES
#    b. LOAD IN MARA (Multiple Antibiotic Resistance Annotator)
