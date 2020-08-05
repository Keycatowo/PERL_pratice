$str = "Hello World, Hey";
print "Yes\n" if $str =~ /World/;
print "Yes\n" if $str =~ m!World!;    #可以換成其他符號例如 !! {}等

while ( $str =~ /(\w+)/g ) {

    # 上面的while中，()表示存起來
    # 存到的位置用特殊變數$1來取
    # 因為hile迴圈所以每次都只會存到$1
    # 補充：$0 為該檔案絕對路徑
    # 後面的g表示匹配之後將pos移到本次結果的後一格位置
    print "The word is [$1]";

    print ", end at position[", pos $str, "]\n";

    # pos 為RE成功匹配區間的下一個位置
}

@words = ( $str =~ /(\w+)/g );    # 如果沒有g的話，則只會匹配一次
foreach (@words) {
    print $_, " ";
}
print "\n";

$str = "cat; dog, house!\n";
print $str;
while ( $str =~ /(\b\w{3}\b)/g ) {

    # \w表示任意文字、字母、底線
    # {3}表示比對3次 {3,}表示至少3次 {3,4}表示3~4次
    # \b 表示字母邊界
    print "The word is [$1]";
    print ", end at position[", pos $str, "]\n";
}
