# use strict;
use warnings;

sub println{
    print @_; print "\n";
}

# perl的hash類似於一般的map
%map = (k1 => 1, k2 => 2, k3 => 3);# 要用%開頭，設定map要用=>
$val = $map{k1}; # 取map-value用{}
println $val;
println %map; # 印出不按順序

# hash 和 array 可以互相轉換
@array = %map;
println @array;
%map2 = @array;
println %map2;

foreach $v (values(%map)){
    print $v."\n";
}

while (($k,$v)=each %map){
    print $k."\n";
}

$h->{a}->{1}="A";
$h->{b}->{3}="B";
println $h;
