#!/usr/bin/env bash



_help() {
echo -e "usage: \n [-create <Project Name>] [-v]"
exit
}


run() {
if [ -f "./Bootstrap.toml" ]; then
	if [ -f "./src/main.sh" ]; then
		chmod +x ./src/main.sh
		bash ./src/main.sh
	else 
		touch ./src/main.sh
		cat <<EOF > main.sh

                #!/usr/bin/env bash
                main() {
                echo "Hello, World!"
                }
                main
EOF
		bash ./src/main.sh
	fi
else
	echo "Bootstrap.toml not found, run Bootstrap -create <your project-name> to make a project "
	exit
fi

echo -e "\n\n"
}

main() {
name=$1
mkdir src
cd src
mkdir caches
touch main.sh
cat <<EOF > main.sh

#!/usr/bin/env bash
main() {
echo "Hello, World!"
}
main

EOF
mkdir utils
cd ..
touch Bootstrap.toml
cat <<EOF > Bootstrap.toml

[Bootstrap]
name = ${name}
ver = v0.1.0

EOF



}

if  [ $# -eq 0 ]; then
	_help
fi

case $1 in 
	-create)
		if [ -z "$2" ]; then
			echo "no project name detected"
		else 
			main "$2"
		fi
		;;
	-v)
		echo "Bootstrap.sh Version V1.0.0"
		exit
		;;
	-r)
	        echo -e "\nInitialising...\n\n"
		run
		exit
		;;
	-d)
		rm -r Bootstrap.toml src
		exit
		;;
	*)
		echo "invalid Command"


esac
