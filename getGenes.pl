$file = $ARGV[0];

open(IN, $file);

while(<IN>){
    chomp;
    @line = split/\t/,$_;
    for $l(0..$#line){}
    if ($line[0] == $ARGV[1]){
#       print "$line[8]\n"
        @gene = split/;/,$line[8];
        for $e (@gene){
            if ($e =~ /gene/){
                $e =~ s/gene=//g;
                print "$e\n";
            }
        }
    }
}


close(IN);

exit;
