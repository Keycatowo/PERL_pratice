$str = "This is a dog.\n";
while ( $str =~ /(\b\w{2}\b)/g ) {
    print "Before: ", $` , "\n";
    print "Entire: ", $& , "\n";
    print "After:",   $' , "\n"; #'
}
