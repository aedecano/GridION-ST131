$file = $ARGV[0];

open(IN, $file);
while(<IN>){
    @line = split/:/,$_;
    for $l(0..$#line){}
    $line[0] =~ s/ctm15-//g;
    $line[0] =~ s/\.crunch//g;
    print "$line[0]\n";
}

close(IN);

exit;
