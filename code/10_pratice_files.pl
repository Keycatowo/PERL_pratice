
# 可輸入式讀檔練習
@file_list = glob "*";
print join("\n",@file_list);

print "\nPlease input the file names:\n>";
$file_name = <STDIN>;
chomp $file_name;
print "<".$file_name;
open (FILE, "<".$file_name);
$n = 0;
print "\n";
while(<FILE>){
  print ++$n.":";
  $line = $_; # 一次讀一行存入預設變數 $_
  print $line;
}
close FILE;
