use List::Util 'shuffle'; # shuffle會用到的package

print " list:";
@list = (1..10);
print "@list"; # 在引號內的陣列會被自動加空格印出

print "\n reverse list:";
print reverse @list; # 翻轉，但無覆蓋，有需要記得重新assign

print "\n shuffle list:";
print shuffle @list; # 打亂，記得要先use所需函式

print "\n sorted list:";
print sort @list; # 預設字典序升序

print "\n sorted <:";
print sort {$a<$b}@list; # 變數要用$a $b，方向和C相反

print "\n sorted >:";
print sort {$a>$b}@list;
