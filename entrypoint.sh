#!/bin/sh
# green4T 2025
# Gabriel Pascoal - gabriel.pascoal@green4t.com

set -x

log() {
  echo "$(date +"%Y-%m-%d %H:%M:%S") - $*"
}

glpi_install() {
  log "INFO: Adjusting permissions"
  chown -R apache:apache ${GLPI_HOME} ${GLPI_VAR_DIR} /var/log/glpi

  log "INFO: Adjusting cache permissions"
  mkdir -p ${GLPI_VAR_DIR}/_cache
  chmod -R 775 ${GLPI_VAR_DIR}/_cache

  log "INFO: Installing DB GLPI"
  php ${GLPI_HOME}/bin/console glpi:database:install \
    --db-host ${DB_HOST} \
    --db-port ${DB_PORT} \
    --db-user ${DB_USER} \
    --db-name ${DB_NAME} \
    --db-password ${DB_PASSWORD} \
    -L pt_BR \
    --no-interaction \
    --reconfigure \
    --force -vvv

  log "INFO: Adjusting permissions after install"
  chown -R apache:apache ${GLPI_HOME} ${GLPI_VAR_DIR} /var/log/glpi ${GLPI_VAR_DIR}/_cache
}

if [ ! -s /etc/glpi/config_db.php ]; then
  log "INFO: Installing GLPI"
  glpi_install
fi

/usr/local/bin/start.sh