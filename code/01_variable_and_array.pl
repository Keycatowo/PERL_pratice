#!/usr/bin/perl
# 基本輸出
print "Hello Word\n\n"; # print 是印出 不用括號
# 變數
$abc="this is a string\n";# $變數
$x = 123.456;
print $abc;
print $x;
print "\n\n";

# 陣列及字串串接
@array1 = (1.5);# @為陣列開頭
print array1[0]."\n\n"; # . 用來串接字串

@array2 = ("abc","123");
print @array2; # 會自動print出來本身全部的東西，但無法用.串接
print @array2[0]; # 陣列一樣是從0開始計數
print "\n\n";

@array3 = (1..5); # 支援range產生陣列方式
print @array3;
