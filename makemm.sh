#!/usr/bin/env bash

# OSX
export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"

# GNU grep
if command -v gnugrep; then
	# FreeBSD
	grep() {
		gnugrep "$@"
	}
else
	# OpenBSD
	grep() {
		ggrep "$@"
	}
fi
export -f grep

# GNU awk and sed
awk() {
	gawk "$@"
}
export -f awk
sed() {
	gsed "$@"
}
export -f sed

# GNU coreutils
basename() {
	gbasname "$@"
}
cat() {
	gcat "$@"
}
chgrp() {
	gchgrp "$@"
}
chmod() {
	gchmod "$@"
}
chown() {
	gchown "$@"
}
chroot() {
	gchroot "$@"
}
cksum() {
	gcksum "$@"
}
comm() {
	gcomm "$@"
}
cp() {
	gcp "$@"
}
csplit() {
	gcsplit "$@"
}
cut() {
	gcut "$@"
}
date() {
	gdate "$@"
}
dd() {
	gdd "$@"
}
df() {
	gdf "$@"
}
dir() {
	gdir "$@"
}
dircolors() {
	gdircolors "$@"
}
dirname() {
	gdirname "$@"
}
du() {
	gdu "$@"
}
# builtin
# alias echo='gecho'
env() {
	genv "$@"
}
expand() {
	gexpand "$@"
}
expr() {
	gexpr "$@"
}
factor() {
	gfactor "$@"
}
false() {
	gfalse "$@"
}
fmt() {
	gfmt "$@"
}
fold() {
	gfold "$@"
}
groups() {
	ggroups "$@"
}
head() {
	ghead "$@"
}
hostid() {
	ghostid "$@"
}
hostname() {
	ghostname "$@"
}
id() {
	gid "$@"
}
install() {
	ginstall "$@"
}
join() {
	gjoin "$@"
}
kill() {
	gkill "$@"
}
link() {
	glink "$@"
}
ln() {
	gln "$@"
}
logname() {
	glogname "$@"
}
ls() {
	gls "$@"
}
md5sum() {
	gmd5sum "$@"
}
mkdir() {
	gmkdir "$@"
}
mkfifo() {
	gmkfifo "$@"
}
mknod() {
	gmknod "$@"
}
mv() {
	gmv "$@"
}
nice() {
	gnice "$@"
}
nl() {
	gnl "$@"
}
nohup() {
	gnohup "$@"
}
od() {
	god "$@"
}
paste() {
	gpaste "$@"
}
pathchk() {
	gpathchk "$@"
}
pinky() {
	gpinky "$@"
}
pr() {
	gpr "$@"
}
printenv() {
	gprintenv "$@"
}
# builtin
# alias printf='gprintf'
ptx() {
	gptx "$@"
}
pwd() {
	gpwd "$@"
}
readlink() {
	greadlink "$@"
}
rm() {
	grm "$@"
}
rmdir() {
	grmdir "$@"
}
seq() {
	gseq "$@"
}
sha1sum() {
	gsha1sum "$@"
}
shred() {
	gshred "$@"
}
sleep() {
	gsleep "$@"
}
sort() {
	gsort "$@"
}
split() {
	gsplit "$@"
}
stat() {
	gstat "$@"
}
stty() {
	gstty "$@"
}
su() {
	gsu "$@"
}
sum() {
	gsum "$@"
}
sync() {
	gsync "$@"
}
tac() {
	gtac "$@"
}
tail() {
	gtail "$@"
}
tee() {
	gtee "$@"
}
test() {
	gtest "$@"
}
touch() {
	gtouch "$@"
}
tr() {
	gtr "$@"
}
true() {
	gtrue "$@"
}
tsort() {
	gtsort "$@"
}
tty() {
	gtty "$@"
}
uname() {
	guname "$@"
}
unexpand() {
	gunexpand "$@"
}
uniq() {
	guniq "$@"
}
unlink() {
	gunlink "$@"
}
uptime() {
	guptime "$@"
}
users() {
	gusers "$@"
}
vdir() {
	gvdir "$@"
}
wc() {
	gwc "$@"
}
who() {
	gwho "$@"
}
whoami() {
	gwhoami "$@"
}
yes() {
	gyes "$@"
}

./makem.sh "$@"
