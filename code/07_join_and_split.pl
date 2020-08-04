sub println{
    print @_;
    print "\n";
}

@array1 = qw (a t t c g c c g q a);
println @array1;

$line = join('-',@array1);
println $line;

@array2 = split(/a/,$line);
println @array2;
