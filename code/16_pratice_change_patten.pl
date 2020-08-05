($f_in,$f_out) = @ARGV; # @ARGV 用來吃執行後面的參數
open (IN, "<$f_in") or die "fail to open file $f_in";
open (OUT,">$f_out") or die "fail to open file $f_out";
$seq = "";
while(<IN>){
    $line = $_;
    if (substr($line,0,1) ne ">"){
        print $line;
        chomp $line;
        $seq .= $line;
    }
}

$seq =~ s/CTGTGA/\n/g;
print OUT $seq;
close IN;
close OUT;

print ($f_in,$f_out);
