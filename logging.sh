# Define color codes
COLOR_INFO='\033[0;34m'    # Informational messages
COLOR_WARNING='\033[0;33m' # Warning messages
COLOR_SUCCESS='\033[0;32m' # Success messages
COLOR_ERROR='\033[0;31m'   # Error messages
COLOR_MISC='\033[0;35m'    # Miscellaneous messages
COLOR_DEBUG='\033[0;36m'   # Debug messages
COLOR_DEFAULT='\033[0;37m' # Default messages
NO_COLOR='\033[0m'         # No Color

# Create logs directory if it doesn't exist
log_dir="./log"
mkdir -p "$log_dir"

# Define the log file name with a timestamp
log_file="$log_dir/log_$(date '+%Y%m%d_%H%M%S').log"

# Check if the old log file exists and rename it to log_old.log
if [[ -f "$log_dir/log.log" ]]; then
  mv "$log_dir/log.log" "$log_dir/log_old.log"
fi

# Create a new log file
touch "$log_file"

log() {
  local level="$1"
  local message="$2"
  local color="$3"
  local log_entry="${color}[${level}] $(date '+%Y-%m-%d %H:%M:%S') - $message${NO_COLOR}"

  # Log to both terminal and file
  echo -e "$log_entry" | tee -a "$log_file"
}

log_info() {
  log "INFO" "$1" "$COLOR_INFO"
}

log_warning() {
  log "WARNING" "$1" "$COLOR_WARNING"
}

log_success() {
  log "SUCCESS" "$1" "$COLOR_SUCCESS"
}

log_process() {
  log "PROCESSING" "$1" "$COLOR_MISC"
}

log_error() {
  log "ERROR" "$1" "$COLOR_ERROR"
}

# Example log messages
# log_info "This is an informational message."
# log_warning "This is a warning message."
# log_success "This is a success message."
# log_process "This is a processing message."
# log_error "This is an error message."
