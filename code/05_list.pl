# shift and pop
@list = qw(a b c d);# qw 用來快速加引號
print "@list\n";
shift @list;
print @list;print"\n";
shift @list;
print @list;print"\n";
print shift @list; # print shift 的 return value
print "\n";

sub sum{
    $a = shift;
    $b = shift;
    my $ans = $a + $b;
    print "a+b is $ans\n";
}

sum(1,2);


sub tmp{
    print @_;
}
# tmp("x","y","\n");
tmp(@list);
