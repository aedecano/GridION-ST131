$file = "$ARGV[0]";

open(IN, $file);
while(<IN>){
    chomp;
    $x = $_;
    system("blastn -db /media/newdrive/arun/GridION_Files/Set1_FASTQs-Multiplex_ligation_291018/ForJulian/BZ_GFFS/Roary_OUT_Mastm_BZ_Refseqs_NoOutliers/$ARGV
[1].db -query ${x}\_Matsm\_assembly.fasta -out $ARGV[1]-${x}.crunch  -outfmt 6");
}

close(IN);

exit;
