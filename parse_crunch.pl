#Parse crunch files from BLAST run

$file = $ARGV[0];
open(in, $file);
while(<in>){
    chomp;
    if ($_ =~ />/){
        @file = split/[==>,<==,".crunch",\s]+/,$_;
        for $f (0..$#file){}
#       print "$file[1]\n";
    }
    if($_ =~ /contigs/){
        @node = split/\t/,$_;
        for $n (0..$#node){}
        $node[0] =~ s/\_contigs.fasta//;
#       print "$node[0]\n";
#       print "$node[3]\n"; #segment length
#       print "$node[6]\n"; #start
#       print "$node[7]\n";
        $node[0]="$node[0]\t$node[3]\t$node[6]\t$node[7]";
        print "$node[0]\n";
    }
}

close(CTM14);


exit;
