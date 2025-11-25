#!/usr/bin/bash

set -e

export LLVM_COMPILER=clang
BEACON="/beacon"
cfile="";
targetline="-1";
outfile="";
insfile="";
datadir=".";

ordvar="--cfile";
setvar="";

for arg in "$@"; do
	if [[ $arg == "-"* ]]
	then
		setvar=$arg;
	elif [[ accept ]]
	then
		nextvar=""
		if [[ $setvar != "" ]]
		then
			nextvar=$setvar;
			setvar="";
		else
			if [[ $ordvar == "--cfile" ]]
			then
				nextvar="--cfile"
				ordvar="--targetline"
			elif [[ $ordvar == "--targetline" ]]
			then
				nextvar="--targetline"
				ordvar=""
			else
				echo "Too many inputs"
				exit
			fi
		fi
		if [[ $nextvar == "-c" || $nextvar == "--cfile" ]] 
		then
			cfile=$arg;
		elif [[ $nextvar == "-t" || $nextvar == "--targetline" ]]
		then
			targetline=$arg
		elif [[ $nextvar == "-o" || $nextvar == "--outfile" ]]
		then
			outfile=$arg;
		elif [[ $nextvar == "-i" || $nextvar == "--insfile" ]]
		then
			insfile=$arg;
		elif [[ $nextvar == "-d" || $nextvar == "--datadir" ]]
		then
			datadir=$arg;
		else
			echo "Unrecognized option";
		fi
	fi
done

if [[ ! -v BEACON ]] 
then
	echo "Set Beacon dir"
fi

if [[ $cfile == "" ]] 
then
	echo "Requires cfile";
	exit
fi

if [[ $outfile == "" ]]
then
	outfile=${cfile##*"/"}
	outfile=${outfile%%".c"*}
	if [[ $outfile == $cfile ]]
	then
		outfile="$outfile-out";
	fi
fi

if [[ $insfile == "" ]]
then
	if [[ $outfile == *"-out" ]]
	then
		insfile="${outfile%%"-out"}-ins"
	else
		insfile="$outfile-ins";
	fi
fi

if [[ $datadir != *"/" ]]
then
	datadir="$datadir/"
fi

ls $datadir 1>/dev/null 2>/dev/null|| mkdir $datadir;
currentdir=$(pwd)

echo "---Start WLLVM---"
wllvm -g $cfile -o $outfile
echo "---START EXTRACTION---"
extract-bc $outfile -o "$datadir$outfile.bc"

if [[ $targetline == "-1" ]]
then
	$BEACON/LineNumber/build/lineNumbers $cfile | sed 's/.*\///' > "$datadir""line.txt"
else
	echo "${cfile##*"/"}:$targetline" > "$datadir""line.txt"
fi


cd $datadir
echo "---START PRECONDINFER---"
$BEACON/precondInfer/build/bin/precondInfer "$outfile.bc" --target-file=line.txt --join-bound=5
echo "---START INSTRUMENTATION---"
$BEACON/Ins/build/Ins -output="$insfile.bc" -blocks=bbreaches.txt -afl -log=log.txt -load=range_res.txt ./transed.bc
cd $currentdir
echo "---START COMPILE---"
clang "$datadir$insfile.bc" -o $insfile -lm -lz $BEACON/Fuzzer/afl-llvm-rt.o
echo "---Finish COMPILE---"
