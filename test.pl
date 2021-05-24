#!/data/Software/mydan/perl/bin/perl

my $info = `cd ../test && git tag -n |grep '^release*'|head -n 2|awk '{print \$1}'`;
my @tagarr = split(/\n/,$info);
my $tagdetail;
if (@tagarr.length == 2){
    $tagdetail = `cd ../test && git log --pretty=format:'%h %s  %an' '@tagarr[1]'...'@tagarr[0]'`;
}elsif (@tagarr.length == 1){
    $tagdetail = `cd ../test && git log --pretty=format:'%h %s  %an' '@tagarr[0]'`;
};
print $tagdetail;
