
sub get_input{
    # 變數預設存到 @_ 裡面
    my $name = <STDIN>;
    chomp $name; # 去掉結尾\n
    return $name;
}

# chomp
$name = "abc\n";
chomp $name; # 去除結尾的換行符，非換行不動作
print $name;
