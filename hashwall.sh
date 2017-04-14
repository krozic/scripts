#!/bin/sh
#
#  ██                        ██                            ██  ██
# ░██                       ░██                           ░██ ░██
# ░██       ██████    ██████░██      ███     ██  ██████   ░██ ░██
# ░██████  ░░░░░░██  ██░░░░ ░██████ ░░██  █ ░██ ░░░░░░██  ░██ ░██
# ░██░░░██  ███████ ░░█████ ░██░░░██ ░██ ███░██  ███████  ░██ ░██
# ░██  ░██ ██░░░░██  ░░░░░██░██  ░██ ░████░████ ██░░░░██  ░██ ░██
# ░██  ░██░░████████ ██████ ░██  ░██ ███░ ░░░██░░████████ ███ ███
# ░░   ░░  ░░░░░░░░ ░░░░░░  ░░   ░░ ░░░    ░░░  ░░░░░░░░ ░░░ ░░░
#
#  ▓▓▓▓▓▓▓▓▓▓
# ░▓ author ▓ xero <x@xero.nu>
# ░▓ code   ▓ http://code.xero.nu/dotfiles
# ░▓ mirror ▓ http://git.io/.files
# ░▓▓▓▓▓▓▓▓▓▓
# ░░░░░░░░░░
#
#█▓▒░ requires: imagemagick + hsetroot

usage() {
	echo "usage: `basename $0` [-bfsr]
    -b background color (#290029)
    -f foreground color (#004d1c)
    -s step (1)
    -r resolution (24)"
	exit 1
}

#args
res=3
step=4
bg="#2b2b2b"
fg="#009938"
#good values,
#res=8
#step=11

# evaluate
while [ $# -gt 0 ]
do
	case "$1" in
			-b)
				bg="$2"
				shift
			;;
			-f)
				fg="$2"
				shift
			;;
			-s)
				step="$2"
				shift
			;;
			-r)
				res="$2"
				shift
			;;
			--)
				shift
				break
			;;
			-*)
				usage
			;;
			*)
				break
			;;
	esac
	shift
done

# calculate
max=$((res*2+2))
i=0
lines=""
while
	lines="$lines line $i,-1 -1,$i"
	i="$((i+step))"
	[ "$i" -lt "$max" ]
do :; done

# generate
convert -size ${res}x${res} xc:${bg} -stroke ${fg} -draw "${lines}" /tmp/wall.png
hsetroot -tile /tmp/wall.png
