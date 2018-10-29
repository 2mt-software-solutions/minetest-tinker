#!/bin/bash
# colors
NC=`tput sgr0`
BCyan=$'\033[1;36m'
BRed=$'\033[1;31m'
BGreen=$'\033[1;32m'
White=$'\033[0;37m'

vFlag=false
sFlag=false
answer=n
version=

function status_error() {
	printf " ${BRed}%5s${NC}\n" "ERROR"
	exit 1
}

function status_ok() {
	if ! $sFlag
	then
		printf " ${BGreen}%5s${NC}\n" "OK"
	fi
}

function status_notice() {
	if ! $sFlag
	then
	    MSG="$1"
		printf "${BCyan}%5s${NC}\n" "$MSG"
	fi
}

function status_msg() {
	if ! $sFlag
	then
		MSG="$1"
		printf "${BCyan}%-40.40s${NC}" "$MSG"
	fi
}

function help()
{
	printf "Usage:\n${BCyan}$0${NC} -v [x.y.z]${NC}\n"
	printf "\n"
	printf "OPTIONS:\n"
	printf "  -h  ${BWhite}help${NC}       : Show this message\n"
	printf "  -s  ${BWhite}silent${NC}     : No output except on errors\n"
	printf "  -y  ${BWhite}confirm${NC}    : Don't ask for confirmation\n"
	printf "  -v  ${BWhite}version${NC}    : Version/Tag to build\n"
	printf "\n"
}

options=':hysv:'
while getopts $options option
do
    case $option in
        v  ) vFlag=true; version=$OPTARG;;
        s ) sFlag=true; answer=y;;
        y ) answer=y;;
        h  ) help; exit;;
        \? ) printf "${BCyan}Unknown option:${White} -$OPTARG${NC}\n\n"; exit 1;;
        :  ) printf "${BCyan}Missing option argument for${White} -$OPTARG${NC}\n\n"; exit 1;;
        *  ) printf "${BCyan}Unimplemented option:${White} -$OPTARG${NC}\n\n"; exit 1;;
    esac
done

# Head
if ! $sFlag
then
printf "\n"
printf "********** ${BCyan}2mt.ModPacker (minetest)${NC} **********\n"
printf "\n"
fi

shift $(($OPTIND - 1))

# grab latest tag from git on no user input
if ! $vFlag
then
	#get highest tag number
	latest=`git describe --abbrev=0 --tags`
	bits=(${latest//./ })

	major=${bits[0]}
	minor=${bits[1]}
	build=${bits[2]}

	#create new tag
	version="${major}.${minor}.${build}"
else
    bits=(${version//./ })

	major=${bits[0]}
	minor=${bits[1]}
	build=${bits[2]}
fi

# everything fine, continue
# version
if ! $sFlag
then
	printf "${BCyan}%-12.12s${NC}" "Version:"
	printf " ${White}%33s${NC}\n" "$version"
fi

# shall we begin?
if [ ${answer} = "n" ]
then
	printf "\n"
	read -t 5 -n 1 -p $"${BCyan}Start packaging? ${NC}(y/n): " answer
	[ -z "$answer" ] && answer="n"
fi

if [ ! $answer = "y" ]; then
  printf "\n\n${BCyan}Build aborted!${NC}\n\n"
  exit 1;
fi

# let me do my work plz!
stty -echo
SECONDS=0

if ! $sFlag
then
	printf "\n${BCyan}Build starting...${NC}\n\n"
fi

# good to go, let's build
status_msg "Create build directories"
if [[ ! -e build ]]; then
    mkdir build	 || status_error
fi

rm -rf build/*  || status_error
status_ok

cd build

status_msg "Creating version.txt"
echo "$version" >> version.txt || status_error
status_ok

status_msg "Package everything together"
tar -czf "../twomt_tinker-${version}.tgz" . || status_error
status_ok

# build => .
cd ..

# finished
duration=$SECONDS

if ! $sFlag
then
	printf "\n"
	printf "${BCyan}Build ${BGreen}finished${NC}\n"
	printf "${BCyan}Duration: ${White}${duration} seconds${NC}\n"
	printf "\n"
fi
# okay, I'm done!
stty echo
