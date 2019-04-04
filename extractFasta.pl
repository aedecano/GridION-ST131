open(IN, "SRR_benzakour.txt");

while(<IN>){
    chomp;
    $x = $_;
    $x = "$x\_prokka";
#    print "$x\n";
    system("samtools faidx /media/newdrive/arun/SCRAPER_ST131/Raw_FQs/Illumina-HiSeq/SRSbreaks/Roary_OUT_N4129plusNCTC13441_1547478916/core_gene_alignment.al
n $x");
}


close(IN);

exit;
