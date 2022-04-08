#!/bin/bash
SCRIPT_DIR="$(dirname $0)"
SCRIPT_NAME="$(basename "$0")"
Verion="V1.0"

# ########################
# Common Functions
# ########################

function log() {
   echo "INFO: $@"
}

function usage() {
   echo "INFO: $@"
   log "Invalid usage"
   log "$SCRIPT_NAME build|config|images|status|start|stop|version"
   log "usage:"
   log "	build   : Build or rebuild services"
   log "	config  : Validate and view the Compose file"
   log "	images  : List images"
   log "	status  : List containers"
   log "	start   : Create and start containers"
   log "	stop    : Stop and remove containers, networks, images, and volumes"
   log "	version : Show the Docker-Compose version information"
   exit
}

# ########################
# MAIN
# ########################
log "----------------------------------------------------------"
log "Date: $(date)"
log "$SCRIPT_DIR/$SCRIPT_NAME is begin:"

if [ "$#" -ne 1 ]; then
    usage
fi
ARG=$(echo $1|tr '[:upper:]' '[:lower:]')

case $ARG in 
    build) 
          log "docker-compose build" 
          docker-compose build ;;
    config) 
          log "docker-compose config" 
          docker-compose config ;;
    images)
          log "docker-compose images" 
          docker-compose images ;;
    status) 
          log "docker-compose ps" 
          docker-compose ps ;;
    start)
          log "docker-compose start" 
          docker-compose up -d ;;
    stop) 
          log "docker-compose stop" 
          docker-compose down ;;
    version)
          log "docker-compose version" 
          docker-compose version ;;
    *)
          usage ;;
esac
log "Date: $(date)"
log "....End Successful" 
log "----------------------------------------------------------"
