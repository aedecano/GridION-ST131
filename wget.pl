open(IN, "PRJEB2968.txt");

while(<IN>){
    chomp;
    if ($_ =~ /fastq\.gz/){
        @ftp = split/\;/,$_;
        for $x (0..$#ftp){}
#       print "$ftp[1]\n";
        @two = split/\s/,$ftp[1];
        for $t (0..$#two){}
#       print "$two[0]\n";
        system("wget $two[0]");
    }
}


close(IN);

exit;
