open (FILE, "<three_seq.fa");# < 表示讀入
$n = 0;
print "\n";
$seq = "";
while (defined ($line = <FILE> )){
    print ++$n.":";

    if (substr($line,0,1) ne ">"){
        print $line;
        chomp $line;
        $seq .= $line;
    }

}
close FILE;

print "\n";
print $seq;

open (FILE2, ">three.txt");
print FILE2 $seq;
close FILE2;

open (FILE3, ">three_reverse.txt");
print FILE3 scalar reverse $seq;
close FILE3;
