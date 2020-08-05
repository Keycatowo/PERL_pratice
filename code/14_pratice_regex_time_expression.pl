$input = <STDIN>;
chomp $input;

$input =~ s!(\d+)[/\-\.](\d+)[\-\./](\d+)!$3/$1/$2!;
# $input =~ s!(\d+)[/-\.](\d+)[-./](\d+)!$3/$1/$2!;
print $input;
