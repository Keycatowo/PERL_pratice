
# index for loop
$sum = 0;
for ($i=1;$i<=10;$i++) # 支援++
{
    print $i."\n";
    $sum += $i; # 支援+=
}
print $sum."\n\n";

# range for loop
@list = (1..10);
foreach $i (@list) # for i in @list
{
    $sum += $i; # 支援+=
    print $i."\n";

}
print $sum."\n\n";

# while
$c = "a";
while($c lt "z")
{
    print $c;
    $c++;
}# "z" -> "aa" -> "ab"
print "\n\n";

# do until
do
{
    print "hi\n";
}until(1);
