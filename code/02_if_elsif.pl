# !/usr/bin/perl

# 比較
print "02: if and elsif.\n";
$a = 5;
$b = 5;
print "3<=>5is:".(3<=>5); # 數值bool value可以直接concat print出來

if ($a > 3) # 一定要有小括號 
    {print "bigger\n";} # 不同於C，單行仍需加大括號
elsif ($a == 3) # 不同於python， 是用elsif不是elif
    {print "equal\n";}
else
    {print "less\n";}
