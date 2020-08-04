# 讀取 while 內寫法 1
open (FILE, "<test.fa");# < 表示讀入
while (defined ($line = <FILE> )){
    print $line;
}
close FILE;

# 讀取 while內寫法2
open (FILE, "<test.fa");
while (<FILE>){
    $line = $_; # 一次讀一行存入預設變數 $_
    print $line;
}
close FILE;


# 寫入 > 表示 write
open(FILE2, ">test write.txt");
print FILE2 "Test~\n";
close FILE2;

# 寫入 >> 表示 append
open(FILE3, ">>test append.txt");
print FILE3 "Test~\n";
close FILE3;
