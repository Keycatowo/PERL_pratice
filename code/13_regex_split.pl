$str = "aaa bbb ccc ddd\n";
while ( $str =~ /(\w+)\W+(\w+)/g) {

    # \w表示任意文字、字母、底線
    # {3}表示比對3次 {3,}表示至少3次 {3,4}表示3~4次
    # \b 表示字母邊界
    print "The word is [$1] and [$2]";
    print ", end at position[", pos $str, "]\n";
}
