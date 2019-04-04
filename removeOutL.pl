open(IN, "removethese.txt");

while(<IN>){
    chomp;
    $x = $_;
#    print "$x.gff\n";
    system("mv ${x}.gff /media/newdrive/arun/GridION_Files/Set1_FASTQs-Multiplex_ligation_291018/ForJulian/BZ_GFFS/Outliers/");
}

close(IN);

exit;
