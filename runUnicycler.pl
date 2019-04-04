$file = $ARGV[0];

open(IN, $file);
while(<IN>){
    chomp;
    $x = $_;
##LR assembly
    system("unicycler --mode bold -l $x.fastq.gz -o Unicycler-LR\_out\_$x");
#    system("mv ${x}_Unicycler_out/assembly.fasta ${x}_contigs.fasta");
#    system("mv ${x}_Unicycler_out/assembly.gfa Gfa_unicycler/${x}_contigs.gfa");
#    system("mv ${x}_Unicycler_out/unicycler.log LOGs_unicycler/${x}_unicycler.log");
}


close(IN);
exit;
