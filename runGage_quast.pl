$strain[0] = "NB11";
@mode = qw(consv normal bold);

for $s (0..$#strain){}
for $m (@mode){
    system("quast.py /media/newdrive/arun/GridION_Files/Set1_FASTQs-Multiplex_ligation_291018/Demultiplexed_porechop/Unicycler-HA${m}_out_NB11/assembly.fasta
  -R /media/newdrive/arun/GridION_Files/Set1_FASTQs-Multiplex_ligation_291018/Demultiplexed_porechop/Unicycler-LRbold_out_NB11/assembly.fasta -o Gage-Quast_H
A${m}_$strain[0]");
#    system("quast.py /media/newdrive/arun/MinIONdata_Sanger/1stRunMinION/ConcatFQtrim_porechop/IlluminaReads_Sanger/Unicycler_SR${m}_$strain[1]_out/assembly
.fasta  -R /media/newdrive/arun/GridION_Files/Set1_FASTQs-Multiplex_ligation_291018/Demultiplexed_porechop/Unicycler-HAbold_out_$strain[1]/refHybridBold_$str
ain[1]assembly.fasta -o Gage-Quast_SR${m}_$strain[1]");
#    system("quast.py /media/newdrive/arun/MinIONdata_Sanger/1stRunMinION/ConcatFQtrim_porechop/IlluminaReads_Sanger/Unicycler_SR${m}_$strain[2]_out/assembly
.fasta  -R /media/newdrive/arun/GridION_Files/Set1_FASTQs-Multiplex_ligation_291018/Demultiplexed_porechop/Unicycler-HAbold_out_$strain[2]/refHybridBold_$str
ain[2]assembly.fasta -o Gage-Quast_SR${m}_$strain[2]");
#    system("quast.py /media/newdrive/arun/MinIONdata_Sanger/1stRunMinION/ConcatFQtrim_porechop/IlluminaReads_Sanger/Unicycler_SR${m}_$strain[3]_out/assembly
.fasta  -R /media/newdrive/arun/GridION_Files/Set1_FASTQs-Multiplex_ligation_291018/Demultiplexed_porechop/Unicycler-HAbold_out_$strain[3]/refHybridBold_$str
ain[3]assembly.fasta -o Gage-Quast_SR${m}_$strain[3]");
#    system("quast.py /media/newdrive/arun/MinIONdata_Sanger/1stRunMinION/ConcatFQtrim_porechop/IlluminaReads_Sanger/Unicycler_SR${m}_$strain[4]_out/assembly
.fasta  -R /media/newdrive/arun/GridION_Files/Set1_FASTQs-Multiplex_ligation_291018/Demultiplexed_porechop/Unicycler-HAbold_out_$strain[4]/refHybridBold_$str
ain[4]assembly.fasta -o Gage-Quast_SR${m}_$strain[4]");


}

exit;
