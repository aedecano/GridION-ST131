$file = $ARGV[0];
open(IN, $file);
while(<IN>){
    chomp;
    $x = $_;
    system("prokka --outdir ${x}_prokka_out --prefix ${x}_prokka ${x}-LRbold_assembly.fasta");
}
