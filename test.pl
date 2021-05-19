#!/data/Software/mydan/perl/bin/perl

system "git tag -n --sort=-taggerdate|grep '^release*'|head -n 2|awk '{print \$1}' > taglist";
open(DATA, "<taglist");
chomp(my @tagarr = <DATA>);
close DATA;
if (@tagarr.length == 2){
    system "git log --pretty=format:'%h %s  %an' '@tagarr[1]'...'@tagarr[0]' > tagdetail";
}else  if (@tagarr.length == 1){
    system "git log --pretty=format:'%h %s  %an' '@tagarr[0]' > tagdetail";
};
