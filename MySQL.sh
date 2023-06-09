#!/bin/bash
# Shell script para obtener una copia desde MySQL
# Desarrollado por Jhon Edison

PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin

set -e

readonly SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
readonly SCRIPT_NAME="$(basename "$0")"

run
make_backup

function assert_is_installed {
	local readonly name="$1"
	if [[ ! $(command -v ${name})]]; then
		log_error "The binary '$name' is required but it isn't in 		our system"
		exit 1
	fi
}
@
function log_error {
	local readonly message "$1"
	log "ERROR" "$message"
}

function  log {
	local readonly level="$1"
	local readonly message="$2"
	local readonly timestamp=$(date +"%Y-%m-%d %H:%M:%S") >&2 echo -e "${timestamp} [${level}] [$SCRIPT_NAME] ${message}"
		
}

function run {
	assert_is_installed "mysql"
	assert_is_installed "mysqldump"
	assert_is_installed "gzip"
	assert_is_installed "aws"
}

function make_backup {
	local BAK="$(echo $HOME/mysql)"
	local MYSQL="$(which mysql)"
	local MYSQLDUMP="$(which mysqldump)"
	local GZIP="$(which gzip)"
	local NOW="$(date +"+%d-%m-%Y")"
	local BUCKET="xxxxx"
	
	USER="xxxxxx"
	PASS="xxxxxx"
	HOST="xxxxxx"
	DATABASE="xxxxxx"

	[! -d "$BAK" ] && mkdir -p "$BAK"

	FILE=$BAK/$DATABASE.$NOW-$(date +"%T").gz
	local SECONDS=0
	
	$MYSQLDUMP --single-transaction --set-gtid-purged=OFF -u $USER -p $PASS -h $HOST $DATABASE | $GZIP -9 > $FILE

	duration=$SECONDS
	echo "$($duration / 60) minutes"
	aws s3 cp $BAK "s3://$BUCKET" --recursive
}