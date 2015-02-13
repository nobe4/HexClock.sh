# echo 'HexaClock v0.1 \n';

# detecting terminal size
lineNumbers="$(tput lines)";
columnNumbers="$(tput cols)";

# echo 'Terminal size : ' $lineNumbers '*' $columnNumbers

# setting text size
textSize=6 # hhmmss

# calculating the text position
textY=$(( $lineNumbers/2 ))
textX=$(( $columnNumbers/2 - $textSize/2 ))

# echo 'Text position '  $textY ' ' $textX

# getting current time
time="$(date +%H%M%S)"

# display text

# first linebreak before printing anything
echo '\n'
for ((i=1;i<=lineNumbers;i++)); do
	if [ $i -eq $textY ] ; then
		for ((j=1;j<=textX;j++)); do
			printf '_'
		done
		printf $time
		for ((j=1;j<=textX;j++)); do
			printf '_'
		done
	else
		for ((j=1;j<=columnNumbers;j++)); do
			printf '_'
		done
	fi
	printf '\n'
done
