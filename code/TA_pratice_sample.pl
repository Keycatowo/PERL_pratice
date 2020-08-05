#!/usr/bin/perl

#This program is to 
#Read a fasta file and output the reverse complement of DNA sequence in it.

print "This program is to\n";
print "Read a fasta file and output the reverse complement of DNA sequence in it.
\n";

@seq = ();
$seq_in  = "";
@seq_comp = ();
@seq_out  = ();
$seq_header = "";
$seq_count = 0;


print "Please tell me the input fasta file name:";
$fa_in  = <STDIN>;
chomp $fa_in;
print "Please tell me the ouput fasta file name:";
$fa_out = <STDIN>;
chomp $fa_out;

open (FHI,"<$fa_in");
while(<FHI>)
{
	$line = $_;
	chomp $line;

	if ($line =~ /^>/ && $seq_header eq "")
	{
		$seq_header = $line;
	}
	else
	{
		push (@seq, $line);
	}

}

foreach (@seq)
{
	$line = $_;
	$seq_in = $seq_in.$line;
}
close(FHI);

$seq_in =~ tr/acgtACGT/tgcaTGCA/;

@seq_comp = split (//, $seq_in);
@seq_out  = reverse @seq_comp;

open (FHO,">$fa_out");
print FHO $seq_header."\n";
foreach (@seq_out)
{
	$line = $_;
	$seq_count++;
	print FHO $line;
	if ($seq_count % 70 == 0)
	{
		print FHO "\n";
	}
}
close (FHO);

print "The reverse complement of DNA sequence is saved in the file $fa_out \n";
