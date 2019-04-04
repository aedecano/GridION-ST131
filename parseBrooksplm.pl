$file = $ARGV[0];

open(IN, $file);

while(<IN>){
    chomp;
    @line = split/\t/,$_;
    for $l (0..$#line){}
    if ($line[0] == $ARGV[1] && $line[3] > $ARGV[2]){
        print "$line[3]\t$line[1]\n";
    }
}

close(IN);

exit;
