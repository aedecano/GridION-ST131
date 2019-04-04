$file = $ARGV[0];

open(IN, $file);
while(<IN>){
    chomp;
    $x = $_;
    system("fastp -i ${x}\_1.fastq.gz -I ${x}\_2.fastq.gz -o $x\_1.trimmed.fastq.gz -O $x\_2.trimmed.fastq.gz");
    system("unicycler --mode bold -1 ${x}\_1.trimmed.fastq.gz -2 ${x}\_2.trimmed.fastq.gz -o ${x}_assembly_OUT --spades_path /media/newdrive/arun/MinIONdata_
Sanger/1stRunMinION/ConcatFQtrim_porechop/SPAdes-3.12.0-Linux/bin/spades.py --pilon_path /media/newdrive/arun/MinIONdata_Sanger/1stRunMinION/ConcatFQtrim_por
echop/pilon-1.22.jar");
    system("mv ${x}\_assembly\_OUT/assembly.fasta ${x}\_Matsm\_assembly.fasta");
    system("prokka --outdir Prokka\_${x}\_Matsm\_OUT --prefix $x\_Matsm\_prokka ${x}\_Matsm\_assembly.fasta");
}


close(IN);
exit;
