#!/bin/bash

#-------------------------------------------------------------------------------
# SCRIPT.........: bkp_all.default.sh
# ACTION.........: Performs backup of selected files
# COPYRIGHT......: Christos Pontikis - http://www.pontikis.gr
# LICENSE........: MIT (see https://opensource.org/licenses/MIT)
# DOCUMENTATION..: See README for instructions
# RESTRICTIONS...: Assumes that all scripts are in the same directory (scriptpath) and
#                  a conf directory exist for configuration files
#-------------------------------------------------------------------------------

scriptpath=`dirname "$0"`
if [ $scriptpath = "." ]; then scriptpath=''; else scriptpath=${scriptpath}/; fi

# include initialize script
source ${scriptpath}conf/initialize.sh

createlog "####################"
createlog "Daily filesystem backup is starting..."

# include www backup script
#source ${scriptpath}bkp_www.sh

# include mysql backup script
#source ${scriptpath}bkp_db_mysql.sh

# include conf backup script
#source ${scriptpath}bkp_conf.sh

# include scripts backup script
#source ${scriptpath}bkp_scripts.sh

# include docs backup script
#source ${scriptpath}bkp_docs.sh

createlog "Daily filesystem backup completed."

#-------------------------------------------------------------------------------
createlog "####################"
createlog "Daily S3 plain backup is starting..."
#source ${scriptpath}s3-plain-sync.sh
createlog "Daily S3 plain backup completed."

#-------------------------------------------------------------------------------
createlog "####################"
createlog "Daily S3 plain custom backup is starting..."
#source ${scriptpath}s3-plain-sync-custom.sh
createlog "Daily S3 plain custom backup completed."

#-------------------------------------------------------------------------------

